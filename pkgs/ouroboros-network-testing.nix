{ mkDerivation
, QuickCheck
, base
, cborg
, containers
, contra-tracer
, deque
, fetchgit
, io-classes
, io-sim
, lib
, network-mux
, psqueues
, serialise
, tasty
, tasty-expected-failure
, tasty-quickcheck
}:
mkDerivation {
  pname = "ouroboros-network-testing";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "0nr5qkphcc5hp1az6fw934zxi0yw9k5626ys1yyw6ybbw38xwpik";
    rev = "c65353299ff3efde05bf07d628a2ac7ea3193458";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-testing/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cborg
    containers
    contra-tracer
    deque
    io-classes
    io-sim
    network-mux
    psqueues
    QuickCheck
    serialise
    tasty
    tasty-expected-failure
  ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Common modules used for testing in ouroboros-network and ouroboros-consensus";
  license = lib.licenses.asl20;
  broken = false;
}
