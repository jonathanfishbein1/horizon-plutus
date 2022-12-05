{ mkDerivation
, Cabal
, HUnit
, base
, concurrent-extra
, lib
, stm
, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "threads";
  version = "0.5.1.7";
  sha256 = "e0f6fea09b99a2f84c98089c27c011077bf43f1e1977a5c43997e226d23142d0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [ base stm ];
  testHaskellDepends = [
    base
    concurrent-extra
    HUnit
    stm
    test-framework
    test-framework-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/basvandijk/threads";
  description = "Fork threads and wait for their result";
  license = lib.licenses.bsd3;
  broken = false;
}
