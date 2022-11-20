{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, criterion
, extra
, hashable
, hspec
, lib
, quickcheck-instances
, unordered-containers
}:
mkDerivation {
  pname = "Unique";
  version = "0.4.7.9";
  sha256 = "34e8247ef2769cae219ff05bed0c8269d680396c451c1d31aa6ad506abc5c191";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    extra
    hashable
    unordered-containers
  ];
  testHaskellDepends = [ base containers hspec QuickCheck ];
  benchmarkHaskellDepends = [
    base
    bytestring
    criterion
    hashable
    QuickCheck
    quickcheck-instances
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "It provides the functionality like unix \"uniq\" utility";
  license = lib.licenses.bsd3;
  broken = false;
}
