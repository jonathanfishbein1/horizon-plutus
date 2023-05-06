{ mkDerivation, QuickCheck, aeson, base, cardano-ledger-binary
, cardano-strict-containers, containers, deepseq, fetchgit, hspec
, lib, mtl, nothunks, transformers, vector, vector-map
}:
mkDerivation {
  pname = "cardano-data";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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