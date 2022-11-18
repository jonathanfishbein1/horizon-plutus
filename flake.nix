{
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
  outputs = inputs@{ self, get-flake, nixpkgs, nixpkgs-libR, horizon-gen-nix, horizon-platform, flake-utils, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs-libR = import nixpkgs-libR { inherit system; };
        pkgs = import nixpkgs { inherit system; };

        horizon-gen-nix-app = get-flake horizon-gen-nix;

        plutus-overlay = pkgs.lib.composeManyExtensions [
            (import ./overlay.nix { inherit pkgs; })
            (import ./configuration.nix { inherit pkgs pkgs-libR; })
          ];

        legacyPackages = horizon-platform.legacyPackages.${system}.override {
          overrides = plutus-overlay;
        };

        packages = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          legacyPackages;
        horizon-gen-gitlab-ci = pkgs.writers.writeBashBin "gen-gitlab-ci" "${pkgs.dhall-json}/bin/dhall-to-yaml --file .gitlab-ci.dhall";
      in
      {
        apps = {
          horizon-gen-nix = horizon-gen-nix-app.apps.${system}.default;
          horizon-gen-gitlab-ci = {
            type = "app";
            program = "${horizon-gen-gitlab-ci}/bin/gen-gitlab-ci";
          };
        };
        checks = {
          dhall-format = lint-utils.outputs.linters.x86_64-linux.dhall-format ./.;
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };

        overlays.default = plutus-overlay;

        inherit legacyPackages;
        inherit packages;
      });
}
