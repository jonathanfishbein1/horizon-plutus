{ libsodium, secp256k1, R, libblst }:
{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  cardano-crypto-class = addPkgconfigDepends (addExtraLibraries (prev.callPackage ./pkgs/cardano-crypto-class.nix { inherit libsodium libblst secp256k1;}) [libblst]) [libblst];

  cardano-crypto-praos = prev.callPackage ./pkgs/cardano-crypto-praos.nix { inherit libsodium;};

  ghcide = null;

  ghcide-bench = null;

  ghcide-test-utils = null;

  haskell-language-server = null;

  hiedb = null;

  hls-alternate-number-format-plugin = null;

  hls-cabal-fmt-plugin = null;

  hls-cabal-plugin = null;

  hls-call-hierarchy-plugin = null;

  hls-change-type-signature-plugin = null;

  hls-class-plugin = null;

  hls-code-range-plugin = null;

  hls-explicit-fixity-plugin = null;

  hls-explicit-imports-plugin = null;

  hls-explicit-record-fields-plugin = null;

  hls-fourmolu-plugin = null;

  hls-gadt-plugin = null;

  hls-hlint-plugin = null;

  hls-module-name-plugin = null;

  hls-pragmas-plugin = null;

  hls-qualify-imported-names-plugin = null;

  hls-refactor-plugin = null;

  hls-refine-imports-plugin = null;

  hls-retrie-plugin = null;

  hls-splice-plugin = null;

  hls-test-utils = null;

  dhall-nixpkgs = null;

  hnix-store-core = null;

  hnix-store-remote = null;

  hnix = null;

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

}
