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
    url = "https://github.com/locallycompact/ouroboros-network";
    sha256 = "1ds14l3x83q21ngvzxj1yfgkw3ng9akpy1c8cvdv3yyl2drbn1g9";
    rev = "13dbe0bf9bca33469d105f22cdcb2b6d1a32c9b9";
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
