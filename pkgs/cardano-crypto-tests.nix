{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-crypto-praos
, cborg
, criterion
, cryptonite
, deepseq
, fetchgit
, formatting
, lib
, nothunks
, pretty-show
, quickcheck-instances
, tasty
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.0.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-tests/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-crypto-praos
    cborg
    criterion
    cryptonite
    deepseq
    formatting
    nothunks
    pretty-show
    QuickCheck
    quickcheck-instances
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  testHaskellDepends = [
    base
    cardano-crypto-class
    tasty
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base cardano-crypto-class criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tests for cardano-crypto-class and -praos";
  license = lib.licenses.asl20;
  broken = false;
}
