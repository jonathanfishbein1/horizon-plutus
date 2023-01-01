{
  description = "horizon-plutus overlay";

  inputs = {
    get-flake.url = "github:ursi/get-flake";
    horizon-platform.url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform?rev=51ffeae6e4cb64c4c0b5c2af322990d3d4089ca2";
    horizon-gen-nix = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-libR.url = "github:nixos/nixpkgs/602748c14b82a2e17078713686fe1df2824fa502";
  };

  outputs =
    inputs@
    { self
    , flake-utils
    , get-flake
    , horizon-gen-nix
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
      horizon-gen-nix-app = get-flake horizon-gen-nix;

      overrides = composeManyExtensions [
        (import ./overlay.nix { inherit pkgs; })
        (import ./configuration.nix { inherit pkgs pkgs-libR; })
      ];

      legacyPackages = horizon-platform.legacyPackages.${system}.override {
        inherit overrides;
      };

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

        horizon-gen-nix = horizon-gen-nix-app.apps.${system}.horizon-gen-nix;

      };

      checks = {
        dhall-format = lint-utils.outputs.linters.${system}.dhall-format ./.;
        nixpkgs-fmt = lint-utils.outputs.linters.${system}.nixpkgs-fmt ./.;
      };

      inherit legacyPackages;
      inherit overrides;
      inherit packages;
    });
}
