{ libsodium, secp256k1, R, libblst }:
{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  cardano-crypto-class = addPkgconfigDepend (prev.callPackage ./pkgs/cardano-crypto-class.nix { inherit libsodium secp256k1;}) libblst;

  cardano-crypto-praos = addSetupDepend (addPkgconfigDepends prev.cardano-crypto-praos [libblst libsodium]) pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-api = addSetupDepend prev.cardano-api pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-api = addSetupDepend prev.cardano-ledger-api pkgs.haskell.packages.ghc925.cabal-doctest;

  cardano-ledger-binary = addSetupDepend prev.cardano-ledger-binary pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-core = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-allegra = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-allegra pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-alonzo = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-alonzo pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-alonzo-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-alonzo-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-babbage = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-babbage pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-babbage-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-babbage-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-conway = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-conway pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-conway-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-conway-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-mary = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-mary pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-shelley = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-shelley pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-shelley-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-shelley-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-shelley-ma-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-shelley-ma-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-ledger-byron-test = pkgs.haskell.lib.addSetupDepend prev.cardano-ledger-byron-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-crypto-test = pkgs.haskell.lib.addSetupDepend prev.cardano-crypto-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  cardano-protocol-tpraos = pkgs.haskell.lib.addSetupDepend prev.cardano-protocol-tpraos pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  ouroboros-consensus = addSetupDepend prev.ouroboros-consensus pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  ouroboros-consensus-cardano = addSetupDepend prev.ouroboros-consensus-cardano pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  ouroboros-consensus-diffusion = addSetupDepend prev.ouroboros-consensus-diffusion pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-core = addPkgconfigDepend (addSetupDepend prev.plutus-core pkgs.haskell.packages.ghc925.Cabal_3_8_1_0) libblst;

  plutus-tx = addSetupDepend prev.plutus-tx pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-tx-plugin = addSetupDepend prev.plutus-tx-plugin pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  plutus-ledger-api = dontBenchmark prev.plutus-ledger-api;

  small-steps = addSetupDepend prev.small-steps pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;

  small-steps-test = addSetupDepend prev.small-steps-test pkgs.haskell.packages.ghc925.Cabal_3_8_1_0;
}
