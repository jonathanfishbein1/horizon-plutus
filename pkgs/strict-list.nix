{ mkDerivation
, QuickCheck
, base
, deepseq
, hashable
, lib
, quickcheck-instances
, rerebase
, semigroupoids
, tasty
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "strict-list";
  version = "0.1.7";
  sha256 = "70cd8accb5e1f68273b07c6cfe64e27f08815df59e2606bc5ed6f2fdcbb20e36";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable semigroupoids ];
  testHaskellDepends = [
    QuickCheck
    quickcheck-instances
    rerebase
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/strict-list";
  description = "Strict linked list";
  license = lib.licenses.mit;
  broken = false;
}
