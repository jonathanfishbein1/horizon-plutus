{ mkDerivation, Only, base, hspec, lib }:
mkDerivation {
  pname = "indexed-list-literals";
  version = "0.2.1.3";
  sha256 = "26e399e285ddf44822781559f7202ed821382457ed6c1c32bdaac7945c033f9d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base Only ];
  testHaskellDepends = [ base hspec ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/davidm-d/indexed-list-literals";
  description = "Type safe indexed list literals";
  license = lib.licenses.bsd3;
  broken = false;
}
