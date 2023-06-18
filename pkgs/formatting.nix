{ mkDerivation, QuickCheck, base, clock, criterion
, double-conversion, hspec, lib, old-locale, scientific, text, time
, transformers
}:
mkDerivation {
  pname = "formatting";
  version = "7.2.0";
  sha256 = "c07b18177af614e7e5f32e6fd924f7b35c1b1c219b3491608ee8e7276e706a6d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base clock double-conversion old-locale scientific text time
    transformers
  ];
  testHaskellDepends = [ base hspec scientific text time ];
  benchmarkHaskellDepends = [ base criterion QuickCheck text ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/AJChapman/formatting#readme";
  description = "Combinator-based type-safe formatting (like printf() or FORMAT)";
  license = lib.licenses.bsd3;
  broken = false;
}