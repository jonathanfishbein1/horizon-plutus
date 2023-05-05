{
  description = "horizon-plutus overlay";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    get-flake.url = "github:ursi/get-flake";
    horizon-platform.url = "git+https://gitlab.horizon-haskell.net/package-sets/horizon-platform?ref=refs/heads/sts-925";
    iohk-nix = {
      url = "github:input-output-hk/iohk-nix";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.nixica.dev/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-libR.url = "github:nixos/nixpkgs/602748c14b82a2e17078713686fe1df2824fa502";
  };

  outputs =
    inputs@
    { self
    , flake-utils
    , get-flake
    , horizon-platform
    , iohk-nix
    , lint-utils
    , nixpkgs
    , nixpkgs-libR
    , ...
    }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
    let
      pkgs-libR = import nixpkgs-libR { inherit system; };
      pkgs = import nixpkgs { inherit system; };
      crypto = (import iohk-nix { }).overlays.crypto;
      iohk-pkgs = import nixpkgs { inherit system; overlays = crypto; };
    in
    with pkgs.lib;
    with pkgs.writers;
    let

      libsodium = iohk-pkgs.libsodium;
      R = pkgs-libR.R;
      secp256k1 = iohk-pkgs.secp256k1;
      blst = iohk-pkgs.libblst;
      
      overrides = composeManyExtensions [
        (import ./overlay.nix { inherit pkgs; })
        (import ./configuration.nix { inherit libsodium R secp256k1 blst; } { inherit pkgs; })
      ];

      legacyPackages' = horizon-platform.legacyPackages.${system}.extend overrides;

      isDerivation =
        x: x != null
          && builtins.typeOf x == "set"
          && pkgs.lib.hasAttr "type" x
          && x.type == "derivation";

      isHaskellLibrary =
        x: isDerivation x
          && pkgs.lib.hasAttr "isHaskellLibrary" x
          && x.isHaskellLibrary == true;

      mapHaskellLibraries = f: builtins.mapAttrs (n: v: if isHaskellLibrary v then f n v else v);

      addCabalSetupDepends = _: v: pkgs.haskell.lib.addSetupDepend v pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

      legacyPackages = mapHaskellLibraries addCabalSetupDepends legacyPackages';

      packages = filterAttrs (_: isDerivation) legacyPackages';
    in
    {

      checks = with lint-utils.outputs.linters.${system}; {
        dhall-format = dhall-format { src = self; };
        nixpkgs-fmt = nixpkgs-fmt { src = self; find = "flake.nix"; };
      };

      inherit legacyPackages;
      inherit packages;
    });
}
