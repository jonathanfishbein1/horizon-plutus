{ mkDerivation, QuickCheck, base, deepseq, fetchzip, lib
, mono-traversable, primitive, tasty, tasty-bench, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "word-array";
  version = "1.1.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/word-array-1.1.0.0.tar.gz";
    sha256 = "0afl8mrwrbl393y564d3gn6kh4xjhqs3cwczb4l606bxzj0a88n4";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq mono-traversable ];
  testHaskellDepends = [
    base mono-traversable QuickCheck tasty tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [ base primitive tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/plutus";
  license = lib.licenses.asl20;
  broken = false;
}