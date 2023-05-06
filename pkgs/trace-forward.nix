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
    sha256 = "1gzhzjdjvf4qinrkw32gglbsd7gwi7r3q4972z1z3vpbg70ky7z7";
    rev = "d6228270e9b6811ca1d00ca9ce9d0254e63c2d6c";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The forwarding protocols library for cardano node";
  license = lib.licenses.asl20;
  broken = false;
}