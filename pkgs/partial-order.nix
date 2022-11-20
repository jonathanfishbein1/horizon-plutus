{ mkDerivation
, HUnit
, base
, containers
, lib
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "partial-order";
  version = "0.2.0.0";
  sha256 = "b25fb46335d11e9a9201d6a3685bff94e13ab73baf7f99eb770218ad1edcc5c8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers ];
  testHaskellDepends = [
    base
    containers
    HUnit
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mtesseract/haskell-partial-order";
  description = "Provides typeclass suitable for types admitting a partial order";
  license = lib.licenses.bsd3;
  broken = false;
}
