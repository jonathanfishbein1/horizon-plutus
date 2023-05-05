{ mkDerivation
, QuickCheck
, aeson
, base
, cardano-ledger-binary
, containers
, deepseq
, fetchgit
, hspec
, lib
, mtl
, nothunks
, vector
}:
mkDerivation {
  pname = "cardano-data";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-data/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    cardano-ledger-binary
    containers
    deepseq
    hspec
    mtl
    nothunks
    QuickCheck
    vector
  ];
  testHaskellDepends = [ base containers hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
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
