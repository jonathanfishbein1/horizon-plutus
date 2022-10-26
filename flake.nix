{
  inputs = {
    horizon-platform.url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-libR.url = "github:nixos/nixpkgs/602748c14b82a2e17078713686fe1df2824fa502";
  };
  outputs = inputs@{ self, nixpkgs, nixpkgs-libR, horizon-platform, flake-utils, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs-libR = import nixpkgs-libR { inherit system; };
        pkgs = import nixpkgs { inherit system; };

        overrides-hp = final: prev:
          (horizon-platform.overrides.${system}.ghc942 final prev
            // (import ./overlay.nix { inherit inputs pkgs; } final prev));
        configuration = import ./configuration.nix { inherit inputs pkgs pkgs-libR; };
        hp = pkgs.haskell.packages.ghc942.override {
          overrides = pkgs.lib.composeManyExtensions [ overrides-hp configuration ];
        };
        hp' = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          hp;
        horizon-gen-gitlab-ci = pkgs.writers.writeBashBin "gen-gitlab-ci" "${pkgs.dhall-json}/bin/dhall-to-yaml --file .gitlab-ci.dhall";
      in
      {
        apps = {
          horizon-gen-nix = {
            type = "app";
            program = "${hp.horizon-gen-nix}/bin/horizon-gen-nix";
          };
        horizon-gen-gitlab-ci = {
            type = "app";
            program = "${horizon-gen-gitlab-ci}/bin/gen-gitlab-ci";
          };
        };
        checks = {
          dhall-format = lint-utils.outputs.linters.x86_64-linux.dhall-format ./.;
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };
        overrides.ghc942 = overrides-hp;
        packages = hp';
      });
}
