{ mkDerivation, QuickCheck, aeson, base, bytestring, cardano-binary
, cardano-strict-containers, cborg, containers, deepseq, fetchgit
, formatting, lib, microlens, mtl, nothunks, primitive, tasty
, tasty-hunit, tasty-quickcheck, text, transformers, vector
, vector-map
}:
mkDerivation {
  pname = "cardano-data";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-data/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring cardano-binary cardano-strict-containers
    cborg containers deepseq formatting microlens mtl nothunks
    primitive QuickCheck text transformers vector vector-map
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-strict-containers cborg
    containers QuickCheck tasty tasty-hunit tasty-quickcheck text
  ];
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