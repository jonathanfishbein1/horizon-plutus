{ mkDerivation
, QuickCheck
, base
, cborg
, containers
, contra-tracer
, deque
, fetchzip
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
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/ouroboros-network-testing-0.2.0.0.tar.gz";
    sha256 = "1cdmzrl1bx4rdyfb273m9lblzbbn9hzppzayq5yn2q4g30adjf7b";
  };
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
