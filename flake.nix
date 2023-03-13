{
  description = "horizon-plutus overlay";

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    get-flake.url = "github:ursi/get-flake";
    horizon-platform.url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-libR.url = "github:nixos/nixpkgs/602748c14b82a2e17078713686fe1df2824fa502";
  };

  outputs =
    inputs@
    { self
    , flake-utils
    , get-flake
    , horizon-platform
    , lint-utils
    , nixpkgs
    , nixpkgs-libR
    , ...
    }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
    let
      pkgs-libR = import nixpkgs-libR { inherit system; };
      pkgs = import nixpkgs { inherit system; };
    in
    with pkgs.lib;
    with pkgs.writers;
    let
      horizon-gen-nix = writeBashBin "horizon-gen-nix" ''
        ${horizon-platform.legacyPackages.${system}.horizon-gen-nix}/bin/horizon-gen-nix;
        ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt pkgs/*
        ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt overlay.nix
      '';

      overrides = composeManyExtensions [
        (import ./overlay.nix { inherit pkgs; })
        (import ./configuration.nix { inherit pkgs pkgs-libR; })
      ];

      legacyPackages = horizon-platform.legacyPackages.${system}.extend overrides;

      packages = filterAttrs
        (n: v: v != null
          && builtins.typeOf v == "set"
          && pkgs.lib.hasAttr "type" v
          && v.type == "derivation"
          && v.meta.broken == false)
        legacyPackages;

    in
    {
      apps = {

        horizon-gen-nix = {
          type = "app";
          program = "${horizon-gen-nix}/bin/horizon-gen-nix";
        };

      };

      checks = with lint-utils.outputs.linters.${system}; {
        dhall-format = dhall-format { src = self; };
        nixpkgs-fmt = nixpkgs-fmt { src = self; };
      };

      inherit legacyPackages;
      inherit overrides;
      inherit packages;
    });
}
