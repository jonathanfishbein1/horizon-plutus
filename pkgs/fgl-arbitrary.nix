{ mkDerivation, QuickCheck, base, containers, fgl, hspec, lib }:
mkDerivation {
  pname = "fgl-arbitrary";
  version = "0.2.0.6";
  sha256 = "6cf210a2ecbda21059647008cc8d85969308b21d18690f82d5f70d92435bd3d7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base fgl QuickCheck ];
  testHaskellDepends = [ base containers fgl hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "QuickCheck support for fgl";
  license = lib.licenses.bsd3;
  broken = false;
}