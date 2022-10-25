{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  PyF = prev.callPackage (./pkgs/PyF.nix) { };

  Unique = prev.callPackage (./pkgs/Unique.nix) { };

  algebraic-graphs = prev.callPackage (./pkgs/algebraic-graphs.nix) { };

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

  cardano-ledger-byron = prev.callPackage (./pkgs/cardano-ledger-byron.nix) { };

  cardano-prelude = prev.callPackage (./pkgs/cardano-prelude.nix) { };

  cardano-prelude-test = prev.callPackage (./pkgs/cardano-prelude-test.nix) { };

  cardano-strict-containers = prev.callPackage (./pkgs/cardano-strict-containers.nix) { };

  flat = prev.callPackage (./pkgs/flat.nix) { };

  generic-monoid = prev.callPackage (./pkgs/generic-monoid.nix) { };

  ghc-typelits-knownnat = prev.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = prev.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  goblins = prev.callPackage (./pkgs/goblins.nix) { };

  gray-code = prev.callPackage (./pkgs/gray-code.nix) { };

  heapwords = prev.callPackage (./pkgs/heapwords.nix) { };

  inline-r = prev.callPackage (./pkgs/inline-r.nix) { };

  moo = prev.callPackage (./pkgs/moo.nix) { };

  nothunks = prev.callPackage (./pkgs/nothunks.nix) { };

  plutus-core = prev.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = prev.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-tx = prev.callPackage (./pkgs/plutus-tx.nix) { };

  prettyprinter-configurable = prev.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  protolude = prev.callPackage (./pkgs/protolude.nix) { };

  ral = prev.callPackage (./pkgs/ral.nix) { };

  recursion-schemes = prev.callPackage (./pkgs/recursion-schemes.nix) { };

  ref-tf = prev.callPackage (./pkgs/ref-tf.nix) { };

  singletons-th = prev.callPackage (./pkgs/singletons-th.nix) { };

  small-steps = prev.callPackage (./pkgs/small-steps.nix) { };

  small-steps-test = prev.callPackage (./pkgs/small-steps-test.nix) { };

  streaming-bytestring = prev.callPackage (./pkgs/streaming-bytestring.nix) { };

  strict-containers = prev.callPackage (./pkgs/strict-containers.nix) { };

  th-desugar = prev.callPackage (./pkgs/th-desugar.nix) { };

  typerep-map = prev.callPackage (./pkgs/typerep-map.nix) { };

  vector-map = prev.callPackage (./pkgs/vector-map.nix) { };

  word-array = prev.callPackage (./pkgs/word-array.nix) { };

}
