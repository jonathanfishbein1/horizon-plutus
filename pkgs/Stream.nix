{ mkDerivation, QuickCheck, base, lazysmallcheck, lib }:
mkDerivation {
  pname = "Stream";
  version = "0.4.7.2";
  sha256 = "990be249b3ef1b0075563026d4d2c803b86e3cbf168965ba6f9f2b4227a007d1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base lazysmallcheck QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A library for manipulating infinite lists";
  license = lib.licenses.bsd3;
  broken = false;
}
