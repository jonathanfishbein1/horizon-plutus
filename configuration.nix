{ pkgs, pkgs-libR, ... }:

with pkgs.haskell.lib;

final: prev: {

  R = pkgs-libR.R;

  cardano-crypto-class = enableCabalFlag (addPkgconfigDepend prev.cardano-crypto-class pkgs.libsodium) "development";

  cardano-crypto-praos = addPkgconfigDepend prev.cardano-crypto-praos pkgs.libsodium;

  cardano-crypto-tests = enableCabalFlag prev.cardano-crypto-tests "development";

  cardano-prelude = enableCabalFlag prev.cardano-prelude "development";

  plutus-core = setBuildTarget (dontBenchmark prev.plutus-core) "plc";

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

  plutus-tx = dontBenchmark prev.plutus-tx;

  secp256k1 = pkgs.secp256k1;

}
