{ mkDerivation, QuickCheck, aeson, array, async, base, bytestring
, cardano-prelude, cardano-slotting, cardano-strict-containers
, cborg, containers, contra-tracer, directory, dns, fetchgit
, hashable, io-classes, io-classes-mtl, io-sim, iproute, lib
, monoidal-synchronisation, mtl, network, network-mux, nothunks
, ouroboros-network-api, ouroboros-network-framework
, ouroboros-network-mock, ouroboros-network-protocols
, ouroboros-network-testing, pipes, pretty-simple, process
, psqueues, random, serialise, si-timers, stm, strict-stm, tasty
, tasty-hunit, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-examples, unix
}:
mkDerivation {
  pname = "ouroboros-network";
  version = "0.6.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base bytestring cardano-prelude cardano-slotting
    cardano-strict-containers cborg containers contra-tracer directory
    dns hashable io-classes io-classes-mtl iproute
    monoidal-synchronisation mtl network network-mux nothunks
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-protocols psqueues random si-timers strict-stm
    typed-protocols unix
  ];
  executableHaskellDepends = [
    async base bytestring containers contra-tracer directory
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-mock ouroboros-network-protocols random serialise
    stm typed-protocols
  ];
  testHaskellDepends = [
    aeson array base bytestring cardano-prelude cardano-slotting cborg
    containers contra-tracer dns hashable io-classes io-sim iproute
    monoidal-synchronisation mtl network network-mux nothunks
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-mock ouroboros-network-protocols
    ouroboros-network-testing pipes pretty-simple process psqueues
    QuickCheck random serialise si-timers strict-stm tasty tasty-hunit
    tasty-quickcheck text time typed-protocols typed-protocols-examples
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A networking layer for the Ouroboros blockchain protocol";
  license = lib.licenses.asl20;
  broken = false;
}