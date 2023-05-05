{ mkDerivation, QuickCheck, aeson, async, base, base16-bytestring
, bifunctors, bimap, binary, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-binary, cardano-prelude
, cardano-slotting, cardano-strict-containers, cassava, cborg
, containers, contra-tracer, deepseq, directory, fetchgit
, file-embed, filelock, filepath, fs-api, fs-sim, generics-sop
, hashable, io-classes, io-sim, lib, measures, mtl, nothunks
, optparse-applicative, ouroboros-network, ouroboros-network-api
, ouroboros-network-framework, ouroboros-network-mock
, ouroboros-network-protocols, pretty-show, psqueues
, quickcheck-state-machine, quiet, random, semialign, serialise
, si-timers, sop-core, streaming, strict-stm, tasty, tasty-bench
, tasty-golden, tasty-hunit, tasty-quickcheck, template-haskell
, text, these, time, transformers, tree-diff, typed-protocols
, utf8-string, vector
}:
mkDerivation {
  pname = "ouroboros-consensus";
  version = "0.6.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-consensus";
    sha256 = "0as3yw8r9cms4sp0zdzij9kp5p81gh16z2bjaarvns79ddpxy1hv";
    rev = "9ebe62d3f1a5b932c984a7b435f93692916fec60";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-consensus/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring bimap binary bytestring cardano-binary
    cardano-crypto-class cardano-ledger-binary cardano-prelude
    cardano-slotting cardano-strict-containers cborg containers
    contra-tracer deepseq directory file-embed filelock filepath fs-api
    fs-sim generics-sop hashable io-classes io-sim measures mtl
    nothunks optparse-applicative ouroboros-network-api
    ouroboros-network-framework ouroboros-network-mock
    ouroboros-network-protocols psqueues QuickCheck
    quickcheck-state-machine quiet random semialign serialise si-timers
    sop-core streaming strict-stm tasty tasty-golden tasty-quickcheck
    template-haskell text these time transformers tree-diff
    typed-protocols utf8-string vector
  ];
  testHaskellDepends = [
    async base bifunctors binary bytestring cardano-binary
    cardano-crypto-class cardano-slotting cborg containers
    contra-tracer deepseq fs-api fs-sim generics-sop hashable
    io-classes io-sim mtl nothunks ouroboros-network
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-mock ouroboros-network-protocols pretty-show
    QuickCheck quickcheck-state-machine random serialise si-timers
    tasty tasty-hunit tasty-quickcheck text time tree-diff
    typed-protocols vector
  ];
  benchmarkHaskellDepends = [
    aeson base bytestring cardano-slotting cassava containers
    contra-tracer deepseq nothunks serialise strict-stm tasty
    tasty-bench tasty-hunit text transformers tree-diff
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Consensus layer for the Ouroboros blockchain protocol";
  license = lib.licenses.asl20;
  broken = false;
}