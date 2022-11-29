{ mkDerivation
, QuickCheck
, array
, async
, base
, bytestring
, deque
, fetchgit
, lib
, mtl
, stm
, tasty
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "io-classes";
  version = "0.4.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "0xcb7j2wcc5zpgjvl1ly0sn7hvdwm51sbcyl5ncva1s1yfg5prsk";
    rev = "dcafd44cdc101a3e213de6a2d5ba7f674c2bc13c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/io-classes/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    async
    base
    bytestring
    deque
    mtl
    stm
    time
  ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes for concurrency with STM, ST and timing";
  license = lib.licenses.asl20;
  broken = false;
}
