{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  OddWord = final.callPackage (./pkgs/OddWord.nix) { };

  algebraic-graphs = final.callPackage (./pkgs/algebraic-graphs.nix) { };

  base-deriving-via = final.callPackage (./pkgs/base-deriving-via.nix) { };

  cardano-binary = final.callPackage (./pkgs/cardano-binary.nix) { };

  cardano-binary-test = final.callPackage (./pkgs/cardano-binary-test.nix) { };

  cardano-crypto = final.callPackage (./pkgs/cardano-crypto.nix) { };

  cardano-crypto-class = final.callPackage (./pkgs/cardano-crypto-class.nix) { };

  cardano-crypto-praos = final.callPackage (./pkgs/cardano-crypto-praos.nix) { };

  cardano-crypto-tests = final.callPackage (./pkgs/cardano-crypto-tests.nix) { };

  cardano-prelude = final.callPackage (./pkgs/cardano-prelude.nix) { };

  cardano-prelude-test = final.callPackage (./pkgs/cardano-prelude-test.nix) { };

  cardano-slotting = final.callPackage (./pkgs/cardano-slotting.nix) { };

  cardano-strict-containers = final.callPackage (./pkgs/cardano-strict-containers.nix) { };

  flat = final.callPackage (./pkgs/flat.nix) { };

  heapwords = final.callPackage (./pkgs/heapwords.nix) { };

  monoidal-containers = final.callPackage (./pkgs/monoidal-containers.nix) { };

  plutus-core = final.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = final.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-tx = final.callPackage (./pkgs/plutus-tx.nix) { };

  plutus-tx-plugin = final.callPackage (./pkgs/plutus-tx-plugin.nix) { };

  prettyprinter-configurable = final.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  quickcheck-transformer = final.callPackage (./pkgs/quickcheck-transformer.nix) { };

  word-array = final.callPackage (./pkgs/word-array.nix) { };

}
