{ mkDerivation, base, lib, primitive }:
mkDerivation {
  pname = "primitive-offset";
  version = "0.2.0.0";
  sha256 = "b15e7de9ebf36ec12b4e2fac2a2c3cefd2b99afa76231fbd0b5cf5d03f6d572b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/primitive-offset";
  description = "Types for offsets into unboxed arrays";
  license = lib.licenses.bsd3;
  broken = false;
}
