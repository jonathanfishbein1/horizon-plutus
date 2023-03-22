{ mkDerivation, QuickCheck, aeson, array, async, base, bytestring
, cardano-prelude, cardano-slotting, cardano-strict-containers
, cborg, containers, contra-tracer, directory, dns, fetchgit
, hashable, io-classes, io-sim, iproute, lib
, monoidal-synchronisation, mtl, network, network-mux, nothunks
, ouroboros-network-api, ouroboros-network-framework
, ouroboros-network-mock, ouroboros-network-protocols
, ouroboros-network-testing, pipes, pretty-simple, process
, psqueues, random, serialise, stm, strict-stm, tasty, tasty-hunit
, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-examples, unix
}:
mkDerivation {
  pname = "ouroboros-network";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/ouroboros-network";
    sha256 = "1ds14l3x83q21ngvzxj1yfgkw3ng9akpy1c8cvdv3yyl2drbn1g9";
    rev = "13dbe0bf9bca33469d105f22cdcb2b6d1a32c9b9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring cardano-prelude cardano-slotting
    cardano-strict-containers cborg containers contra-tracer directory
    dns hashable io-classes iproute monoidal-synchronisation mtl
    network network-mux nothunks ouroboros-network-api
    ouroboros-network-framework ouroboros-network-protocols psqueues
    random strict-stm typed-protocols unix
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
    QuickCheck random serialise strict-stm tasty tasty-hunit
    tasty-quickcheck text time typed-protocols typed-protocols-examples
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A networking layer for the Ouroboros blockchain protocol";
  license = lib.licenses.asl20;
  broken = false;
}