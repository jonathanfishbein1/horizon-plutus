{ libsodium, secp256k1, R, blst }:
{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  cardano-crypto-class = prev.callPackage ./pkgs/cardano-crypto-class.nix { inherit libsodium secp256k1; libblst = blst; };

  cardano-crypto-praos = addPkgconfigDepends prev.cardano-crypto-praos [libsodium];

  plutus-core = addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx = addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

}
