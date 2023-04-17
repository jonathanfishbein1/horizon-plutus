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

  plutus-core = pkgs.haskell.lib.addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx = pkgs.haskell.lib.addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = pkgs.haskell.lib.addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

#  plutus-core = setBuildTarget (dontBenchmark prev.plutus-core) "plc";

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

#  plutus-tx = dontBenchmark prev.plutus-tx;

  secp256k1 = pkgs.secp256k1;

  strict-containers = enableCabalFlag prev.strict-containers "development";
}
