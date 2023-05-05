{ mkDerivation, QuickCheck, aeson, base, cardano-ledger-binary
, cardano-strict-containers, containers, deepseq, fetchgit, hspec
, lib, mtl, nothunks, transformers, vector, vector-map
}:
mkDerivation {
  pname = "cardano-data";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-data/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-ledger-binary cardano-strict-containers
    containers deepseq hspec mtl nothunks QuickCheck transformers
    vector vector-map
  ];
  testHaskellDepends = [ base containers hspec QuickCheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Specialized data for Cardano project";
  license = lib.licenses.asl20;
  broken = false;
}