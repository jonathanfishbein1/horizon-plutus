{ mkDerivation, QuickCheck, base, binary, bytestring
, cardano-crypto-class, cardano-slotting, cborg, containers
, contra-tracer, deepseq, directory, fetchgit, fgl, filepath
, fs-api, fs-sim, graphviz, hashable, io-classes, io-sim, lib, mtl
, nothunks, ouroboros-consensus, ouroboros-network
, ouroboros-network-api, ouroboros-network-framework
, ouroboros-network-mock, ouroboros-network-protocols, quiet
, random, serialise, si-timers, tasty, tasty-hunit
, tasty-quickcheck, temporary, text, time, typed-protocols
}:
mkDerivation {
  pname = "ouroboros-consensus-diffusion";
  version = "0.5.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-consensus";
    sha256 = "0as3yw8r9cms4sp0zdzij9kp5p81gh16z2bjaarvns79ddpxy1hv";
    rev = "9ebe62d3f1a5b932c984a7b435f93692916fec60";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-consensus-diffusion/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-crypto-class cborg containers contra-tracer
    deepseq fgl filepath fs-api fs-sim graphviz hashable io-classes
    io-sim mtl ouroboros-consensus ouroboros-network
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-mock ouroboros-network-protocols QuickCheck quiet
    random serialise si-timers text time typed-protocols
  ];
  testHaskellDepends = [
    base binary bytestring cardano-slotting cborg containers directory
    fs-api fs-sim io-sim mtl nothunks ouroboros-consensus
    ouroboros-network-api ouroboros-network-mock QuickCheck quiet
    serialise si-timers tasty tasty-hunit tasty-quickcheck temporary
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Integration for the Ouroboros Network layer";
  license = lib.licenses.asl20;
  broken = false;
}