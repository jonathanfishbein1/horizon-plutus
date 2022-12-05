{ mkDerivation
, QuickCheck
, base
, deepseq
, lib
, tasty
, tasty-discover
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "generic-arbitrary";
  version = "1.0.1";
  sha256 = "92013ed9d38370bedad67a05deabc203bfdfd5a74ebec17554270e8ed22c29c7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base QuickCheck ];
  testHaskellDepends = [
    base
    deepseq
    QuickCheck
    tasty
    tasty-discover
    tasty-hunit
    tasty-quickcheck
  ];
  testToolDepends = [ tasty-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/typeable/generic-arbitrary#readme";
  description = "Generic implementation for QuickCheck's Arbitrary";
  license = lib.licenses.mit;
  broken = false;
}
