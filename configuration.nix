{ pkgs, pkgs-libR, ... }:

with pkgs.haskell.lib;

final: prev: {

  R = pkgs-libR.R;

  cardano-crypto-class = enableCabalFlag (addPkgconfigDepend prev.cardano-crypto-class pkgs.libsodium) "development";

  cardano-crypto-praos = addPkgconfigDepend prev.cardano-crypto-praos pkgs.libsodium;

  cardano-prelude = enableCabalFlag prev.cardano-prelude "development";

  microstache = doJailbreak prev.microstache;

  monoidal-containers = doJailbreak prev.monoidal-containers;

  nonempty-vector = dontCheck (doJailbreak prev.nonempty-vector);

  plutus-core = setBuildTarget (disableLibraryProfiling (dontBenchmark prev.plutus-core)) "plc";

  plutus-ledger-api = disableLibraryProfiling (dontBenchmark prev.plutus-ledger-api);

  plutus-tx = disableLibraryProfiling (dontBenchmark prev.plutus-tx);

  secp256k1 = pkgs.secp256k1;

}
