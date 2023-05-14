{ mkDerivation, QuickCheck, base, deepseq, fetchgit, lib
, mono-traversable, primitive, tasty, tasty-bench, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "word-array";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "1xf2jn46rk57mq8kskp2g4ijsi69mi5awsv2jm4qnzvxvgv897da";
    rev = "5efe047b034bdd1f79df6dfa64a3c5d205ffa8f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/word-array/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq mono-traversable ];
  testHaskellDepends = [
    base mono-traversable QuickCheck tasty tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [ base primitive tasty-bench ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/plutus";
  license = lib.licenses.asl20;
  broken = false;
}