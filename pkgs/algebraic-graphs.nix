{ mkDerivation, QuickCheck, array, base, containers, deepseq, extra
, inspection-testing, lib, transformers
}:
mkDerivation {
  pname = "algebraic-graphs";
  version = "0.7";
  sha256 = "51159a0d18690ab51e6709e3c576275402f96f57d901f87d734da6854582e568";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers deepseq transformers
  ];
  testHaskellDepends = [
    array base containers deepseq extra inspection-testing QuickCheck
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snowleopard/alga";
  description = "A library for algebraic graph construction and transformation";
  license = lib.licenses.mit;
  broken = false;
}