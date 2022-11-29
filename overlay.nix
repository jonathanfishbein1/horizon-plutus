{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  HTF = final.callPackage (./pkgs/HTF.nix) { };

  HsOpenSSL = final.callPackage (./pkgs/HsOpenSSL.nix) { };

  PyF = final.callPackage (./pkgs/PyF.nix) { };

  Stream = final.callPackage (./pkgs/Stream.nix) { };

  Unique = final.callPackage (./pkgs/Unique.nix) { };

  Win32-network = final.callPackage (./pkgs/Win32-network.nix) { };

  algebraic-graphs = final.callPackage (./pkgs/algebraic-graphs.nix) { };

  async-timer = final.callPackage (./pkgs/async-timer.nix) { };

  base-deriving-via = final.callPackage (./pkgs/base-deriving-via.nix) { };

  base-prelude = final.callPackage (./pkgs/base-prelude.nix) { };

  base58-bytestring = final.callPackage (./pkgs/base58-bytestring.nix) { };

  base64-bytestring-type = final.callPackage (./pkgs/base64-bytestring-type.nix) { };

  bech32 = final.callPackage (./pkgs/bech32.nix) { };

  bin = final.callPackage (./pkgs/bin.nix) { };

  byron-spec-chain = final.callPackage (./pkgs/byron-spec-chain.nix) { };

  byron-spec-ledger = final.callPackage (./pkgs/byron-spec-ledger.nix) { };

  canonical-json = final.callPackage (./pkgs/canonical-json.nix) { };

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

  composition-prelude = final.callPackage (./pkgs/composition-prelude.nix) { };

  concurrent-extra = final.callPackage (./pkgs/concurrent-extra.nix) { };

  contra-tracer = final.callPackage (./pkgs/contra-tracer.nix) { };

  data-ordlist = final.callPackage (./pkgs/data-ordlist.nix) { };

  dependent-sum-template = final.callPackage (./pkgs/dependent-sum-template.nix) { };

  deque = final.callPackage (./pkgs/deque.nix) { };

  deriving-compat = final.callPackage (./pkgs/deriving-compat.nix) { };

  dictionary-sharing = final.callPackage (./pkgs/dictionary-sharing.nix) { };

  dns = final.callPackage (./pkgs/dns.nix) { };

  doctest-discover = final.callPackage (./pkgs/doctest-discover.nix) { };

  dom-lt = final.callPackage (./pkgs/dom-lt.nix) { };

  flat = final.callPackage (./pkgs/flat.nix) { };

  generic-monoid = final.callPackage (./pkgs/generic-monoid.nix) { };

  ghc-typelits-knownnat = final.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = final.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  goblins = final.callPackage (./pkgs/goblins.nix) { };

  gray-code = final.callPackage (./pkgs/gray-code.nix) { };

  haskell-src = final.callPackage (./pkgs/haskell-src.nix) { };

  heapwords = final.callPackage (./pkgs/heapwords.nix) { };

  hedgehog-extras = final.callPackage (./pkgs/hedgehog-extras.nix) { };

  hedgehog-fn = final.callPackage (./pkgs/hedgehog-fn.nix) { };

  hedgehog-quickcheck = final.callPackage (./pkgs/hedgehog-quickcheck.nix) { };

  heredoc = final.callPackage (./pkgs/heredoc.nix) { };

  hex-text = final.callPackage (./pkgs/hex-text.nix) { };

  http-common = final.callPackage (./pkgs/http-common.nix) { };

  http-streams = final.callPackage (./pkgs/http-streams.nix) { };

  hw-aeson = final.callPackage (./pkgs/hw-aeson.nix) { };

  hxt = final.callPackage (./pkgs/hxt.nix) { };

  hxt-charproperties = final.callPackage (./pkgs/hxt-charproperties.nix) { };

  hxt-regex-xmlschema = final.callPackage (./pkgs/hxt-regex-xmlschema.nix) { };

  hxt-unicode = final.callPackage (./pkgs/hxt-unicode.nix) { };

  inline-c = final.callPackage (./pkgs/inline-c.nix) { };

  inline-r = final.callPackage (./pkgs/inline-r.nix) { };

  int-cast = final.callPackage (./pkgs/int-cast.nix) { };

  io-classes = final.callPackage (./pkgs/io-classes.nix) { };

  io-sim = final.callPackage (./pkgs/io-sim.nix) { };

  io-streams = final.callPackage (./pkgs/io-streams.nix) { };

  io-streams-haproxy = final.callPackage (./pkgs/io-streams-haproxy.nix) { };

  katip = final.callPackage (./pkgs/katip.nix) { };

  lazy-search = final.callPackage (./pkgs/lazy-search.nix) { };

  lazysmallcheck = final.callPackage (./pkgs/lazysmallcheck.nix) { };

  list-t = final.callPackage (./pkgs/list-t.nix) { };

  measures = final.callPackage (./pkgs/measures.nix) { };

  mersenne-random-pure64 = final.callPackage (./pkgs/mersenne-random-pure64.nix) { };

  monoidal-containers = final.callPackage (./pkgs/monoidal-containers.nix) { };

  monoidal-synchronisation = final.callPackage (./pkgs/monoidal-synchronisation.nix) { };

  moo = final.callPackage (./pkgs/moo.nix) { };

  mtl-prelude = final.callPackage (./pkgs/mtl-prelude.nix) { };

  multiset = final.callPackage (./pkgs/multiset.nix) { };

  newtype = final.callPackage (./pkgs/newtype.nix) { };

  non-integral = final.callPackage (./pkgs/non-integral.nix) { };

  nonempty-vector = final.callPackage (./pkgs/nonempty-vector.nix) { };

  nothunks = final.callPackage (./pkgs/nothunks.nix) { };

  openapi3 = final.callPackage (./pkgs/openapi3.nix) { };

  openssl-streams = final.callPackage (./pkgs/openssl-streams.nix) { };

  optparse-applicative-fork = final.callPackage (./pkgs/optparse-applicative-fork.nix) { };

  optparse-generic = final.callPackage (./pkgs/optparse-generic.nix) { };

  partial-order = final.callPackage (./pkgs/partial-order.nix) { };

  plutus-core = final.callPackage (./pkgs/plutus-core.nix) { };

  plutus-ledger-api = final.callPackage (./pkgs/plutus-ledger-api.nix) { };

  plutus-preprocessor = final.callPackage (./pkgs/plutus-preprocessor.nix) { };

  plutus-tx = final.callPackage (./pkgs/plutus-tx.nix) { };

  prettyprinter-configurable = final.callPackage (./pkgs/prettyprinter-configurable.nix) { };

  protolude = final.callPackage (./pkgs/protolude.nix) { };

  quiet = final.callPackage (./pkgs/quiet.nix) { };

  ral = final.callPackage (./pkgs/ral.nix) { };

  readable = final.callPackage (./pkgs/readable.nix) { };

  recursion-schemes = final.callPackage (./pkgs/recursion-schemes.nix) { };

  ref-tf = final.callPackage (./pkgs/ref-tf.nix) { };

  set-algebra = final.callPackage (./pkgs/set-algebra.nix) { };

  singletons-th = final.callPackage (./pkgs/singletons-th.nix) { };

  size-based = final.callPackage (./pkgs/size-based.nix) { };

  small-steps = final.callPackage (./pkgs/small-steps.nix) { };

  small-steps-test = final.callPackage (./pkgs/small-steps-test.nix) { };

  snap-core = final.callPackage (./pkgs/snap-core.nix) { };

  snap-server = final.callPackage (./pkgs/snap-server.nix) { };

  statistics-linreg = final.callPackage (./pkgs/statistics-linreg.nix) { };

  streaming-binary = final.callPackage (./pkgs/streaming-binary.nix) { };

  streaming-bytestring = final.callPackage (./pkgs/streaming-bytestring.nix) { };

  strict-containers = final.callPackage (./pkgs/strict-containers.nix) { };

  strict-list = final.callPackage (./pkgs/strict-list.nix) { };

  strict-stm = final.callPackage (./pkgs/strict-stm.nix) { };

  testing-type-modifiers = final.callPackage (./pkgs/testing-type-modifiers.nix) { };

  th-desugar = final.callPackage (./pkgs/th-desugar.nix) { };

  threads = final.callPackage (./pkgs/threads.nix) { };

  time-locale-compat = final.callPackage (./pkgs/time-locale-compat.nix) { };

  time-units = final.callPackage (./pkgs/time-units.nix) { };

  transformers-except = final.callPackage (./pkgs/transformers-except.nix) { };

  typed-protocols = final.callPackage (./pkgs/typed-protocols.nix) { };

  typed-protocols-cborg = final.callPackage (./pkgs/typed-protocols-cborg.nix) { };

  typed-protocols-examples = final.callPackage (./pkgs/typed-protocols-examples.nix) { };

  typerep-map = final.callPackage (./pkgs/typerep-map.nix) { };

  validation-selective = final.callPackage (./pkgs/validation-selective.nix) { };

  vector-map = final.callPackage (./pkgs/vector-map.nix) { };

  word-array = final.callPackage (./pkgs/word-array.nix) { };

  xmlgen = final.callPackage (./pkgs/xmlgen.nix) { };

  zlib-bindings = final.callPackage (./pkgs/zlib-bindings.nix) { };

}
