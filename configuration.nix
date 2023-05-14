{ libsodium, secp256k1, R, libblst }:
{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  cardano-crypto-class = addPkgconfigDepend (prev.callPackage ./pkgs/cardano-crypto-class.nix { inherit libsodium secp256k1;}) libblst;

  cardano-crypto-praos = addSetupDepend (addPkgconfigDepends prev.cardano-crypto-praos [libblst libsodium]) pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

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

  hnix-store-core = null;

  hnix-store-remote = null;

  hnix = null;

  plutus-core = addPkgconfigDepend (addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0) libblst;

  plutus-tx = addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

}
