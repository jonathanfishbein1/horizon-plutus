{
  inputs = {
    all-cabal-hashes = {
      url = "github:commercialhaskell/all-cabal-hashes?ref=hackage";
      flake = false;
    };
    cardano-base = {
      url = "github:input-output-hk/cardano-base";
      flake = false;
    };
    cardano-crypto = {
      url = "github:input-output-hk/cardano-crypto";
      flake = false;
    };
    cardano-prelude = {
      url = "github:input-output-hk/cardano-prelude";
      flake = false;
    };
    flat = {
      url = "github:Quid2/flat";
      flake = false;
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs.follows = "nixpkgs";
    haskell-flake.url = "github:srid/haskell-flake";
    horizon-platform = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
    };
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nothunks = {
      url = "github:locallycompact/nothunks";
      flake = false;
    };
    plutus = {
      url = "github:input-output-hk/plutus";
      flake = false;
    };
  };
  outputs = inputs@{ self, nixpkgs, horizon-platform, flake-utils, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        overlay-ach = final: prev: { all-cabal-hashes = inputs.all-cabal-hashes; };
        pkgs = import nixpkgs { inherit system; overlays = [ overlay-ach ]; };
        overrides-hp = final: prev:
          (horizon-platform.overrides.${system}.ghc942 final prev)
            // (import ./overlay.nix { inherit inputs pkgs; } final prev);
        hp = pkgs.haskell.packages.ghc942.override {
          overrides = overrides-hp;
        };
        hp' = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          hp;
      in
      {
        checks = {
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };
        overrides.ghc942 = overrides-hp;
        packages = hp';
      });
}
