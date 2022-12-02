{ mkDerivation
, HUnit
, QuickCheck
, base
, deepseq
, hashable
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
, tasty-th
}:
mkDerivation {
  pname = "extended-reals";
  version = "0.2.4.0";
  sha256 = "0c2c664abe60a105207b1678ab699c1b5cf2708976bc6b2b8c3a4e54e93faea5";
  revision = "1";
  editedCabalFile = "07qsnn05q9n2l4jh7agql44l2z7rqnwdcp9bssri4chs0jvk15rg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable ];
  testHaskellDepends = [
    base
    deepseq
    HUnit
    QuickCheck
    tasty
    tasty-hunit
    tasty-quickcheck
    tasty-th
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/msakai/extended-reals/";
  description = "Extension of real numbers with positive/negative infinities";
  license = lib.licenses.bsd3;
  broken = false;
}
