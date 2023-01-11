{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  OddWord = final.callPackage (./pkgs/OddWord.nix) { };

  Win32-network = final.callPackage (./pkgs/Win32-network.nix) { };

  base-deriving-via = final.callPackage (./pkgs/base-deriving-via.nix) { };

  byron-spec-chain = final.callPackage (./pkgs/byron-spec-chain.nix) { };

  byron-spec-ledger = final.callPackage (./pkgs/byron-spec-ledger.nix) { };

  cardano-binary = final.callPackage (./pkgs/cardano-binary.nix) { };

  cardano-binary-test = final.callPackage (./pkgs/cardano-binary-test.nix) { };

  cardano-crypto = final.callPackage (./pkgs/cardano-crypto.nix) { };

  cardano-crypto-class = final.callPackage (./pkgs/cardano-crypto-class.nix) { };

  cardano-crypto-praos = final.callPackage (./pkgs/cardano-crypto-praos.nix) { };

  cardano-crypto-test = final.callPackage (./pkgs/cardano-crypto-test.nix) { };

  cardano-crypto-tests = final.callPackage (./pkgs/cardano-crypto-tests.nix) { };

  cardano-crypto-wrapper = final.callPackage (./pkgs/cardano-crypto-wrapper.nix) { };

  cardano-data = final.callPackage (./pkgs/cardano-data.nix) { };

  cardano-ledger-alonzo = final.callPackage (./pkgs/cardano-ledger-alonzo.nix) { };

  cardano-ledger-alonzo-test = final.callPackage (./pkgs/cardano-ledger-alonzo-test.nix) { };

  cardano-ledger-api = final.callPackage (./pkgs/cardano-ledger-api.nix) { };

  cardano-ledger-babbage = final.callPackage (./pkgs/cardano-ledger-babbage.nix) { };

  cardano-ledger-babbage-test = final.callPackage (./pkgs/cardano-ledger-babbage-test.nix) { };

  cardano-ledger-byron = final.callPackage (./pkgs/cardano-ledger-byron.nix) { };

  cardano-ledger-byron-test = final.callPackage (./pkgs/cardano-ledger-byron-test.nix) { };

  cardano-ledger-conway = final.callPackage (./pkgs/cardano-ledger-conway.nix) { };

  cardano-ledger-conway-test = final.callPackage (./pkgs/cardano-ledger-conway-test.nix) { };

  cardano-ledger-core = final.callPackage (./pkgs/cardano-ledger-core.nix) { };

  cardano-ledger-pretty = final.callPackage (./pkgs/cardano-ledger-pretty.nix) { };

  cardano-ledger-shelley = final.callPackage (./pkgs/cardano-ledger-shelley.nix) { };

  cardano-ledger-shelley-ma = final.callPackage (./pkgs/cardano-ledger-shelley-ma.nix) { };

  cardano-ledger-shelley-ma-test = final.callPackage (./pkgs/cardano-ledger-shelley-ma-test.nix) { };

  cardano-ledger-shelley-test = final.callPackage (./pkgs/cardano-ledger-shelley-test.nix) { };

  cardano-ledger-test = final.callPackage (./pkgs/cardano-ledger-test.nix) { };

  cardano-prelude = final.callPackage (./pkgs/cardano-prelude.nix) { };

  cardano-prelude-test = final.callPackage (./pkgs/cardano-prelude-test.nix) { };

  cardano-protocol-tpraos = final.callPackage (./pkgs/cardano-protocol-tpraos.nix) { };

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

  monoidal-synchronisation = final.callPackage (./pkgs/monoidal-synchronisation.nix) { };

  moo = final.callPackage (./pkgs/moo.nix) { };

  network-mux = final.callPackage (./pkgs/network-mux.nix) { };

  non-integral = final.callPackage (./pkgs/non-integral.nix) { };

  nothunks = final.callPackage (./pkgs/nothunks.nix) { };

  ntp-client = final.callPackage (./pkgs/ntp-client.nix) { };

  optparse-applicative-fork = final.callPackage (./pkgs/optparse-applicative-fork.nix) { };

  plutus-core = final.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = final.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-preprocessor = final.callPackage (./pkgs/plutus-preprocessor.nix) { };

  plutus-tx = final.callPackage (./pkgs/plutus-tx.nix) { };

  prettyprinter-configurable = final.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  set-algebra = final.callPackage (./pkgs/set-algebra.nix) { };

  small-steps = final.callPackage (./pkgs/small-steps.nix) { };

  small-steps-test = final.callPackage (./pkgs/small-steps-test.nix) { };

  strict-containers = final.callPackage (./pkgs/strict-containers.nix) { };

  strict-stm = final.callPackage (./pkgs/strict-stm.nix) { };

  tracer-transformers = final.callPackage (./pkgs/tracer-transformers.nix) { };

  typed-protocols = final.callPackage (./pkgs/typed-protocols.nix) { };

  typed-protocols-cborg = final.callPackage (./pkgs/typed-protocols-cborg.nix) { };

  typed-protocols-examples = final.callPackage (./pkgs/typed-protocols-examples.nix) { };

  vector-map = final.callPackage (./pkgs/vector-map.nix) { };

  word-array = final.callPackage (./pkgs/word-array.nix) { };

}
