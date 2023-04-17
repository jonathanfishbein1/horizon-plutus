{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  OddWord = final.callPackage (./pkgs/OddWord.nix) { };

  Win32-network = final.callPackage (./pkgs/Win32-network.nix) { };

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

  contra-tracer = final.callPackage (./pkgs/contra-tracer.nix) { };

  flat = final.callPackage (./pkgs/flat.nix) { };

  goblins = final.callPackage (./pkgs/goblins.nix) { };

  gray-code = final.callPackage (./pkgs/gray-code.nix) { };

  heapwords = final.callPackage (./pkgs/heapwords.nix) { };

  io-classes = final.callPackage (./pkgs/io-classes.nix) { };

  io-sim = final.callPackage (./pkgs/io-sim.nix) { };

  iohk-monitoring = final.callPackage (./pkgs/iohk-monitoring.nix) { };

  measures = final.callPackage (./pkgs/measures.nix) { };

  monoidal-containers = final.callPackage (./pkgs/monoidal-containers.nix) { };

  monoidal-synchronisation = final.callPackage (./pkgs/monoidal-synchronisation.nix) { };

  moo = final.callPackage (./pkgs/moo.nix) { };

  network-mux = final.callPackage (./pkgs/network-mux.nix) { };

  nothunks = final.callPackage (./pkgs/nothunks.nix) { };

  ntp-client = final.callPackage (./pkgs/ntp-client.nix) { };

  optparse-applicative-fork = final.callPackage (./pkgs/optparse-applicative-fork.nix) { };

  ouroboros-network = final.callPackage (./pkgs/ouroboros-network.nix) { };

  ouroboros-network-api = final.callPackage (./pkgs/ouroboros-network-api.nix) { };

  ouroboros-network-framework = final.callPackage (./pkgs/ouroboros-network-framework.nix) { };

  ouroboros-network-mock = final.callPackage (./pkgs/ouroboros-network-mock.nix) { };

  ouroboros-network-protocols = final.callPackage (./pkgs/ouroboros-network-protocols.nix) { };

  ouroboros-network-testing = final.callPackage (./pkgs/ouroboros-network-testing.nix) { };

  plutus-core = final.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = final.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-tx = final.callPackage (./pkgs/plutus-tx.nix) { };

  plutus-tx-plugin = final.callPackage (./pkgs/plutus-tx-plugin.nix) { };

  prettyprinter-configurable = final.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  quickcheck-transformer = final.callPackage (./pkgs/quickcheck-transformer.nix) { };

  strict-containers = final.callPackage (./pkgs/strict-containers.nix) { };

  strict-stm = final.callPackage (./pkgs/strict-stm.nix) { };

  tracer-transformers = final.callPackage (./pkgs/tracer-transformers.nix) { };

  typed-protocols = final.callPackage (./pkgs/typed-protocols.nix) { };

  typed-protocols-cborg = final.callPackage (./pkgs/typed-protocols-cborg.nix) { };

  typed-protocols-examples = final.callPackage (./pkgs/typed-protocols-examples.nix) { };

  word-array = final.callPackage (./pkgs/word-array.nix) { };

}
