{ mkDerivation, QuickCheck, Win32-network, async, base, bytestring
, cardano-prelude, cborg, containers, contra-tracer, directory, dns
, fetchgit, hashable, io-classes, io-sim, iproute, lib
, monoidal-synchronisation, mtl, network, network-mux, nothunks
, optparse-applicative, ouroboros-network-api
, ouroboros-network-testing, pretty-simple, quickcheck-instances
, quiet, random, serialise, stm, strict-stm, tasty
, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-cborg, typed-protocols-examples
}:
mkDerivation {
  pname = "ouroboros-network-framework";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/ouroboros-network";
    sha256 = "1ds14l3x83q21ngvzxj1yfgkw3ng9akpy1c8cvdv3yyl2drbn1g9";
    rev = "13dbe0bf9bca33469d105f22cdcb2b6d1a32c9b9";
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
    random stm strict-stm text typed-protocols typed-protocols-cborg
    Win32-network
  ];
  executableHaskellDepends = [
    async base bytestring contra-tracer directory io-classes network
    network-mux optparse-applicative ouroboros-network-api random
    strict-stm typed-protocols typed-protocols-examples
  ];
  testHaskellDepends = [
    base bytestring cborg containers contra-tracer directory dns
    io-classes io-sim iproute monoidal-synchronisation network
    network-mux ouroboros-network-api ouroboros-network-testing
    pretty-simple QuickCheck quickcheck-instances quiet serialise
    strict-stm tasty tasty-quickcheck text time typed-protocols
    typed-protocols-cborg typed-protocols-examples
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
  broken = false;
}