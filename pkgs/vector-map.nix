{ mkDerivation, QuickCheck, base, cardano-binary, containers
, criterion, deepseq, fetchgit, lib, nothunks, primitive
, quickcheck-classes-base, random, tasty, tasty-quickcheck, vector
, vector-algorithms
}:
mkDerivation {
  pname = "vector-map";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/vector-map/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cardano-binary containers deepseq nothunks primitive vector
    vector-algorithms
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-classes-base tasty
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base containers criterion random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "An efficient VMap that is backed by two vectors: one for keys and another for values";
  license = lib.licenses.asl20;
  broken = false;
}