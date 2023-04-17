{ pkgs, pkgs-libR, ... }:

with pkgs.haskell.lib;

final: prev: {

  R = pkgs-libR.R;

  cardano-crypto-class = enableCabalFlag (addPkgconfigDepend prev.cardano-crypto-class pkgs.libsodium) "development";

  cardano-crypto-praos = addPkgconfigDepend prev.cardano-crypto-praos pkgs.libsodium;

  cardano-crypto-tests = enableCabalFlag prev.cardano-crypto-tests "development";

  cardano-prelude = enableCabalFlag prev.cardano-prelude "development";

  ghcide = null;

  ghcide-bench = null;

  ghcide-test-utils = null;

  haskell-language-server = null;

  hiedb = null;

  hls-alternate-number-format-plugin = null;

  hls-cabal-fmt-plugin = null;

  hls-cabal-plugin = null;

  hls-call-heirarchy-plugin = null;

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

  plutus-core = pkgs.haskell.lib.addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx = pkgs.haskell.lib.addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = pkgs.haskell.lib.addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

#  plutus-core = setBuildTarget (dontBenchmark prev.plutus-core) "plc";

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

#  plutus-tx = dontBenchmark prev.plutus-tx;

  secp256k1 = pkgs.secp256k1;

  strict-containers = enableCabalFlag prev.strict-containers "development";
}
