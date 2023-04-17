{ mkDerivation, QuickCheck, base, deepseq, fetchgit, lib
, mono-traversable, primitive, tasty, tasty-bench, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "word-array";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "0wxydqj949hi1zzybblfwmbj5j05sy51kn3byhpnizspqjjcjb07";
    rev = "b94d0e001c8f7350b5120b20cbc9d9021d377a8a";
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