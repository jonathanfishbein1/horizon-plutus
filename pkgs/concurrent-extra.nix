{ mkDerivation
, HUnit
, async
, base
, lib
, random
, stm
, test-framework
, test-framework-hunit
, unbounded-delays
}:
mkDerivation {
  pname = "concurrent-extra";
  version = "0.7.0.12";
  sha256 = "040e6db9e0147de9929661759930f1566a7250add4c7f65b04dc6e070c991df9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base stm unbounded-delays ];
  testHaskellDepends = [
    async
    base
    HUnit
    random
    stm
    test-framework
    test-framework-hunit
    unbounded-delays
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/basvandijk/concurrent-extra";
  description = "Extra concurrency primitives";
  license = lib.licenses.bsd3;
  broken = false;
}
