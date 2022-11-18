{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  HTF = prev.callPackage (./pkgs/HTF.nix) { };

  PyF = prev.callPackage (./pkgs/PyF.nix) { };

  Unique = prev.callPackage (./pkgs/Unique.nix) { };

  algebraic-graphs = prev.callPackage (./pkgs/algebraic-graphs.nix) { };

  base-deriving-via = prev.callPackage (./pkgs/base-deriving-via.nix) { };

  base58-bytestring = prev.callPackage (./pkgs/base58-bytestring.nix) { };

  base64-bytestring-type = prev.callPackage (./pkgs/base64-bytestring-type.nix) { };

  bech32 = prev.callPackage (./pkgs/bech32.nix) { };

  byron-spec-chain = prev.callPackage (./pkgs/byron-spec-chain.nix) { };

  byron-spec-ledger = prev.callPackage (./pkgs/byron-spec-ledger.nix) { };

  canonical-json = prev.callPackage (./pkgs/canonical-json.nix) { };

  cardano-binary = prev.callPackage (./pkgs/cardano-binary.nix) { };

  cardano-binary-test = prev.callPackage (./pkgs/cardano-binary-test.nix) { };

  cardano-crypto = prev.callPackage (./pkgs/cardano-crypto.nix) { };

  cardano-crypto-class = prev.callPackage (./pkgs/cardano-crypto-class.nix) { };

  cardano-crypto-praos = prev.callPackage (./pkgs/cardano-crypto-praos.nix) { };

  cardano-crypto-test = prev.callPackage (./pkgs/cardano-crypto-test.nix) { };

  cardano-crypto-wrapper = prev.callPackage (./pkgs/cardano-crypto-wrapper.nix) { };

  cardano-data = prev.callPackage (./pkgs/cardano-data.nix) { };

  cardano-ledger-alonzo = prev.callPackage (./pkgs/cardano-ledger-alonzo.nix) { };

  cardano-ledger-alonzo-test = prev.callPackage (./pkgs/cardano-ledger-alonzo-test.nix) { };

  cardano-ledger-api = prev.callPackage (./pkgs/cardano-ledger-api.nix) { };

  cardano-ledger-babbage = prev.callPackage (./pkgs/cardano-ledger-babbage.nix) { };

  cardano-ledger-babbage-test = prev.callPackage (./pkgs/cardano-ledger-babbage-test.nix) { };

  cardano-ledger-byron = prev.callPackage (./pkgs/cardano-ledger-byron.nix) { };

  cardano-ledger-byron-test = prev.callPackage (./pkgs/cardano-ledger-byron-test.nix) { };

  cardano-ledger-conway = prev.callPackage (./pkgs/cardano-ledger-conway.nix) { };

  cardano-ledger-conway-test = prev.callPackage (./pkgs/cardano-ledger-conway-test.nix) { };

  cardano-ledger-core = prev.callPackage (./pkgs/cardano-ledger-core.nix) { };

  cardano-ledger-pretty = prev.callPackage (./pkgs/cardano-ledger-pretty.nix) { };

  cardano-ledger-shelley = prev.callPackage (./pkgs/cardano-ledger-shelley.nix) { };

  cardano-ledger-shelley-ma = prev.callPackage (./pkgs/cardano-ledger-shelley-ma.nix) { };

  cardano-ledger-shelley-ma-test = prev.callPackage (./pkgs/cardano-ledger-shelley-ma-test.nix) { };

  cardano-ledger-shelley-test = prev.callPackage (./pkgs/cardano-ledger-shelley-test.nix) { };

  cardano-ledger-test = prev.callPackage (./pkgs/cardano-ledger-test.nix) { };

  cardano-prelude = prev.callPackage (./pkgs/cardano-prelude.nix) { };

  cardano-prelude-test = prev.callPackage (./pkgs/cardano-prelude-test.nix) { };

  cardano-protocol-tpraos = prev.callPackage (./pkgs/cardano-protocol-tpraos.nix) { };

  cardano-slotting = prev.callPackage (./pkgs/cardano-slotting.nix) { };

  cardano-strict-containers = prev.callPackage (./pkgs/cardano-strict-containers.nix) { };

  contra-tracer = prev.callPackage (./pkgs/contra-tracer.nix) { };

  data-ordlist = prev.callPackage (./pkgs/data-ordlist.nix) { };

  flat = prev.callPackage (./pkgs/flat.nix) { };

  generic-monoid = prev.callPackage (./pkgs/generic-monoid.nix) { };

  ghc-typelits-knownnat = prev.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = prev.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  goblins = prev.callPackage (./pkgs/goblins.nix) { };

  gray-code = prev.callPackage (./pkgs/gray-code.nix) { };

  haskell-src = prev.callPackage (./pkgs/haskell-src.nix) { };

  heapwords = prev.callPackage (./pkgs/heapwords.nix) { };

  hedgehog-quickcheck = prev.callPackage (./pkgs/hedgehog-quickcheck.nix) { };

  heredoc = prev.callPackage (./pkgs/heredoc.nix) { };

  inline-c = prev.callPackage (./pkgs/inline-c.nix) { };

  inline-r = prev.callPackage (./pkgs/inline-r.nix) { };

  list-t = prev.callPackage (./pkgs/list-t.nix) { };

  measures = prev.callPackage (./pkgs/measures.nix) { };

  moo = prev.callPackage (./pkgs/moo.nix) { };

  non-integral = prev.callPackage (./pkgs/non-integral.nix) { };

  nothunks = prev.callPackage (./pkgs/nothunks.nix) { };

  partial-order = prev.callPackage (./pkgs/partial-order.nix) { };

  plutus-core = prev.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = prev.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-preprocessor = prev.callPackage (./pkgs/plutus-preprocessor.nix) { };

  plutus-tx = prev.callPackage (./pkgs/plutus-tx.nix) { };

  prettyprinter-configurable = prev.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  protolude = prev.callPackage (./pkgs/protolude.nix) { };

  quiet = prev.callPackage (./pkgs/quiet.nix) { };

  ral = prev.callPackage (./pkgs/ral.nix) { };

  recursion-schemes = prev.callPackage (./pkgs/recursion-schemes.nix) { };

  ref-tf = prev.callPackage (./pkgs/ref-tf.nix) { };

  set-algebra = prev.callPackage (./pkgs/set-algebra.nix) { };

  singletons-th = prev.callPackage (./pkgs/singletons-th.nix) { };

  small-steps = prev.callPackage (./pkgs/small-steps.nix) { };

  small-steps-test = prev.callPackage (./pkgs/small-steps-test.nix) { };

  streaming-binary = prev.callPackage (./pkgs/streaming-binary.nix) { };

  streaming-bytestring = prev.callPackage (./pkgs/streaming-bytestring.nix) { };

  strict-containers = prev.callPackage (./pkgs/strict-containers.nix) { };

  th-desugar = prev.callPackage (./pkgs/th-desugar.nix) { };

  typerep-map = prev.callPackage (./pkgs/typerep-map.nix) { };

  validation-selective = prev.callPackage (./pkgs/validation-selective.nix) { };

  vector-map = prev.callPackage (./pkgs/vector-map.nix) { };

  word-array = prev.callPackage (./pkgs/word-array.nix) { };

}
