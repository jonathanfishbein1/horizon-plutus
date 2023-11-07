{
  description = "horizon-plutus overlay";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    horizon-advance.url = "git+https://gitlab.horizon-haskell.net/package-sets/horizon-advance?ref=lts/ghc-9.6.x";
    iohk-nix.url = "github:input-output-hk/iohk-nix";
    lint-utils.url = "git+https://gitlab.nixica.dev/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-libR.url = "github:nixos/nixpkgs/602748c14b82a2e17078713686fe1df2824fa502";
  };

  outputs =
    inputs@
    { self
    , flake-utils
    , horizon-advance
    , iohk-nix
    , lint-utils
    , nixpkgs
    , nixpkgs-libR
    , ...
    }:
    flake-utils.lib.eachSystem [ "aarch64-darwin" "x86_64-darwin" "x86_64-linux" ] (system:
    let
      pkgs-libR = import nixpkgs-libR { inherit system; };
      pkgs = import nixpkgs { inherit system; };
      crypto = inputs.iohk-nix.overlays.crypto;
      iohk-pkgs = import nixpkgs { inherit system; overlays = [ crypto ]; };
    in
    with pkgs.lib;
    with pkgs.writers;
    let

      libsodium = iohk-pkgs.libsodium-vrf;
      R = pkgs-libR.R;
      secp256k1 = iohk-pkgs.secp256k1;
      libblst = iohk-pkgs.libblst;

      overrides = composeManyExtensions [
        (import ./overlay.nix { inherit pkgs; })
        (import ./configuration.nix { inherit libsodium R secp256k1 libblst; } { inherit pkgs; })
      ];

      legacyPackages = horizon-advance.legacyPackages.${system}.extend overrides;

      packages = filterAttrs (_: isDerivation) legacyPackages;

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
