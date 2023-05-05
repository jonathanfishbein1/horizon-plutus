{ mkDerivation, QuickCheck, Win32-network, async, base, bytestring
, cardano-prelude, cborg, containers, contra-tracer, directory, dns
, fetchgit, hashable, io-classes, io-sim, iproute, lib
, monoidal-synchronisation, mtl, network, network-mux, nothunks
, optparse-applicative, ouroboros-network-api
, ouroboros-network-testing, pretty-simple, quickcheck-instances
, quiet, random, serialise, si-timers, stm, strict-stm, tasty
, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-cborg, typed-protocols-examples
}:
mkDerivation {
  pname = "ouroboros-network-framework";
  version = "0.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-framework/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base bytestring cardano-prelude cborg containers
    contra-tracer dns hashable io-classes io-sim iproute
    monoidal-synchronisation mtl network network-mux nothunks
    ouroboros-network-api ouroboros-network-testing QuickCheck quiet
    random si-timers stm strict-stm text typed-protocols
    typed-protocols-cborg Win32-network
  ];
  executableHaskellDepends = [
    async base bytestring contra-tracer directory io-classes network
    network-mux optparse-applicative ouroboros-network-api random
    si-timers strict-stm typed-protocols typed-protocols-examples
  ];
  testHaskellDepends = [
    base bytestring cborg containers contra-tracer directory dns
    io-classes io-sim iproute monoidal-synchronisation network
    network-mux ouroboros-network-api ouroboros-network-testing
    pretty-simple QuickCheck quickcheck-instances quiet serialise
    si-timers strict-stm tasty tasty-quickcheck text time
    typed-protocols typed-protocols-cborg typed-protocols-examples
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ouroboros network framework";
  license = lib.licenses.asl20;
  broken = false;
}