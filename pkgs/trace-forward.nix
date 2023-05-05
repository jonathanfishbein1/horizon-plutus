{ mkDerivation, QuickCheck, aeson, async, base, bytestring, cborg
, containers, contra-tracer, extra, fetchgit, io-classes, io-sim
, lib, ouroboros-network-api, ouroboros-network-framework
, serialise, stm, tasty, tasty-quickcheck, text, typed-protocols
, typed-protocols-cborg
}:
mkDerivation {
  pname = "trace-forward";
  version = "0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "0wkbz2yxwaaxx6w5j2snbp8gg8imjjipw8zka3lcnrp3jx9gx1ha";
    rev = "b7d70f3a54921669519e1de1ec6ed381d01b28fb";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/trace-forward/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring cborg containers contra-tracer extra
    io-classes ouroboros-network-api ouroboros-network-framework
    serialise stm text typed-protocols typed-protocols-cborg
  ];
  testHaskellDepends = [
    aeson base bytestring contra-tracer io-classes io-sim
    ouroboros-network-api ouroboros-network-framework QuickCheck
    serialise tasty tasty-quickcheck text typed-protocols
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The forwarding protocols library for cardano node";
  license = lib.licenses.asl20;
  broken = false;
}