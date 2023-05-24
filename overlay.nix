{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  HTF = final.callPackage (./pkgs/HTF.nix) { };

  Stream = final.callPackage (./pkgs/Stream.nix) { };

  algebraic-graphs = final.callPackage (./pkgs/algebraic-graphs.nix) { };

  base-deriving-via = final.callPackage (./pkgs/base-deriving-via.nix) { };

  base-prelude = final.callPackage (./pkgs/base-prelude.nix) { };

  canonical-json = final.callPackage (./pkgs/canonical-json.nix) { };

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

  checkers = final.callPackage (./pkgs/checkers.nix) { };

  composition-prelude = final.callPackage (./pkgs/composition-prelude.nix) { };

  deriving-aeson = final.callPackage (./pkgs/deriving-aeson.nix) { };

  dom-lt = final.callPackage (./pkgs/dom-lt.nix) { };

  flat = final.callPackage (./pkgs/flat.nix) { };

  heapwords = final.callPackage (./pkgs/heapwords.nix) { };

  hex-text = final.callPackage (./pkgs/hex-text.nix) { };

  int-cast = final.callPackage (./pkgs/int-cast.nix) { };

  lazy-search = final.callPackage (./pkgs/lazy-search.nix) { };

  lazysmallcheck = final.callPackage (./pkgs/lazysmallcheck.nix) { };

  list-t = final.callPackage (./pkgs/list-t.nix) { };

  monoidal-containers = final.callPackage (./pkgs/monoidal-containers.nix) { };

  mtl-prelude = final.callPackage (./pkgs/mtl-prelude.nix) { };

  multiset = final.callPackage (./pkgs/multiset.nix) { };

  newtype = final.callPackage (./pkgs/newtype.nix) { };

  nonempty-vector = final.callPackage (./pkgs/nonempty-vector.nix) { };

  plutus-core = final.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = final.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-tx = final.callPackage (./pkgs/plutus-tx.nix) { };

  plutus-tx-plugin = final.callPackage (./pkgs/plutus-tx-plugin.nix) { };

  prettyprinter-configurable = final.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  protolude = final.callPackage (./pkgs/protolude.nix) { };

  quickcheck-text = final.callPackage (./pkgs/quickcheck-text.nix) { };

  quickcheck-transformer = final.callPackage (./pkgs/quickcheck-transformer.nix) { };

  ral = final.callPackage (./pkgs/ral.nix) { };

  timeit = final.callPackage (./pkgs/timeit.nix) { };

  word-array = final.callPackage (./pkgs/word-array.nix) { };

}
