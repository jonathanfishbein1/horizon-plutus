{ mkDerivation, QuickCheck, base, deepseq, fetchgit, lib
, mono-traversable, primitive, tasty, tasty-bench, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "word-array";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/plutus";
    sha256 = "0pzzqqbp6jvrzxp7gyi4dnnc5pg0jnr76dsaq6pzn3zgr46pgbd3";
    rev = "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/word-array/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq mono-traversable primitive
  ];
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