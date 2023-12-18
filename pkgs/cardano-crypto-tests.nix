{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto-class, cardano-crypto-praos, cborg
, criterion, cryptonite, deepseq, fetchzip, formatting, lib
, nothunks, pretty-show, quickcheck-instances, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.1.2.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-crypto-tests-2.1.2.0.tar.gz";
    sha256 = "1dn6imy2hf2zb2k82pj9rzqy71j88pvcm505zi9l1zai396nyy4c";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tests for cardano-crypto-class and -praos";
  license = lib.licenses.asl20;
  broken = false;
}