{ mkDerivation, QuickCheck, base, bytestring
, cardano-strict-containers, cborg, containers, contra-tracer
, directory, fetchgit, filepath, io-classes, io-sim, lib, mtl
, network, network-mux, ouroboros-network-api
, ouroboros-network-framework, ouroboros-network-mock
, ouroboros-network-testing, pipes, process-extras
, quickcheck-instances, serialise, si-timers, strict-stm, tasty
, tasty-hunit, tasty-quickcheck, temporary, text, typed-protocols
, typed-protocols-cborg
}:
mkDerivation {
  pname = "ouroboros-network-protocols";
  version = "0.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-protocols/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-strict-containers cborg containers
    contra-tracer io-classes io-sim network-mux ouroboros-network-api
    ouroboros-network-framework ouroboros-network-mock pipes QuickCheck
    quickcheck-instances serialise si-timers strict-stm tasty
    tasty-quickcheck text typed-protocols typed-protocols-cborg
  ];
  testHaskellDepends = [
    base bytestring cborg containers directory filepath mtl network
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-mock ouroboros-network-testing process-extras
    QuickCheck quickcheck-instances serialise tasty tasty-hunit
    tasty-quickcheck temporary text typed-protocols
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ouroboros Network Protocols";
  license = lib.licenses.asl20;
  broken = false;
}