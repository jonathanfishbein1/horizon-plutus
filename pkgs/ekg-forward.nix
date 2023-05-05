{ mkDerivation, async, base, bytestring, cborg, contra-tracer
, ekg-core, fetchgit, hspec, io-classes, lib, network
, ouroboros-network-api, ouroboros-network-framework, serialise
, stm, text, time, typed-protocols, typed-protocols-cborg
, unordered-containers
}:
mkDerivation {
  pname = "ekg-forward";
  version = "0.3.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ekg-forward";
    sha256 = "1lj3iam983nzbpjs2i41xbi84bihqpr8lnykq5m5iia4scr1apkr";
    rev = "5cb1dbac35ac07870302511403faf8efb96c56c3";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base bytestring cborg contra-tracer ekg-core io-classes
    network ouroboros-network-api ouroboros-network-framework serialise
    stm text time typed-protocols typed-protocols-cborg
    unordered-containers
  ];
  executableHaskellDepends = [
    base contra-tracer ekg-core stm text time
  ];
  testHaskellDepends = [
    base contra-tracer ekg-core hspec stm time unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/ekg-forward";
  description = "See README for more info";
  license = lib.licenses.asl20;
  broken = false;
}