{ mkDerivation, QuickCheck, aeson, async, base, bytestring
, cardano-prelude, cborg, containers, contra-tracer, criterion, ekg
, ekg-core, ekg-forward, fetchgit, generic-data, hostname, lib
, network, optparse-applicative, optparse-applicative-fork
, ouroboros-network, ouroboros-network-api
, ouroboros-network-framework, serialise, stm, tasty
, tasty-quickcheck, text, time, trace-forward, unagi-chan, unix
, unliftio, unliftio-core, unordered-containers, utf8-string, yaml
}:
mkDerivation {
  pname = "trace-dispatcher";
  version = "1.29.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "1gzhzjdjvf4qinrkw32gglbsd7gwi7r3q4972z1z3vpbg70ky7z7";
    rev = "d6228270e9b6811ca1d00ca9ce9d0254e63c2d6c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/trace-dispatcher/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring cborg containers contra-tracer ekg
    ekg-core ekg-forward hostname network optparse-applicative-fork
    ouroboros-network ouroboros-network-api ouroboros-network-framework
    serialise stm text time trace-forward unagi-chan unix unliftio
    unliftio-core unordered-containers yaml
  ];
  executableHaskellDepends = [
    aeson base bytestring containers ekg ekg-core hostname stm text
    time trace-forward unagi-chan unliftio unliftio-core
    unordered-containers utf8-string yaml
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-prelude containers ekg ekg-core
    generic-data hostname optparse-applicative ouroboros-network
    QuickCheck stm tasty tasty-quickcheck text time unagi-chan unliftio
    unliftio-core unordered-containers yaml
  ];
  benchmarkHaskellDepends = [
    aeson base containers criterion ekg QuickCheck text time
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tracers for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}