{ mkDerivation, QuickCheck, array, base, containers, deepseq, hspec
, lib, microbench, transformers
}:
mkDerivation {
  pname = "fgl";
  version = "5.8.1.1";
  sha256 = "6908fd6ecb010c83d103a296b970eb82f7b9c914059afd6002d39a720a6a8cad";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers deepseq transformers
  ];
  testHaskellDepends = [ base containers hspec QuickCheck ];
  benchmarkHaskellDepends = [ base deepseq microbench ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Martin Erwig's Functional Graph Library";
  license = lib.licenses.bsd3;
  broken = false;
}