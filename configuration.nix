{ libsodium, secp256k1, R, libblst }:
{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  cardano-crypto-class = addPkgconfigDepend (prev.callPackage ./pkgs/cardano-crypto-class.nix { inherit libsodium secp256k1;}) libblst;

  cardano-crypto-praos = addSetupDepend (addPkgconfigDepends prev.cardano-crypto-praos [libblst libsodium]) pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-binary = addSetupDepend prev.cardano-ledger-binary pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  ouroboros-consensus = addSetupDepend prev.ouroboros-consensus pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-core = addPkgconfigDepend (addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0) libblst;

  plutus-tx = addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

  small-steps = addSetupDepend prev.small-steps pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  small-steps-test = addSetupDepend prev.small-steps-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;
}
