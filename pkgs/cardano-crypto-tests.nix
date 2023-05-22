{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto-class, cardano-crypto-praos, cborg
, criterion, cryptonite, deepseq, fetchzip, formatting, lib
, nothunks, pretty-show, quickcheck-instances, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.1.1.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-crypto-tests-2.1.1.0.tar.gz";
    sha256 = "1g8j7lw4x480sdy83ihnpd2hayypqyl5yl3ap4qjqijjdycs8rlz";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-crypto-class cardano-crypto-praos cborg criterion
    cryptonite deepseq formatting nothunks pretty-show QuickCheck
    quickcheck-instances tasty tasty-hunit tasty-quickcheck
  ];
  testHaskellDepends = [
    base cardano-crypto-class tasty tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base cardano-crypto-class criterion ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tests for cardano-crypto-class and -praos";
  license = lib.licenses.asl20;
  broken = false;
}