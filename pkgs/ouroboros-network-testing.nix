{ mkDerivation, QuickCheck, base, cborg, containers, contra-tracer
, deque, fetchgit, io-classes, io-sim, lib, network-mux, psqueues
, serialise, si-timers, tasty, tasty-expected-failure
, tasty-quickcheck
}:
mkDerivation {
  pname = "ouroboros-network-testing";
  version = "0.3.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-testing/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cborg containers contra-tracer deque io-classes io-sim
    network-mux psqueues QuickCheck serialise si-timers tasty
    tasty-expected-failure
  ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Common modules used for testing in ouroboros-network and ouroboros-consensus";
  license = lib.licenses.asl20;
  broken = false;
}