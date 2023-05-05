{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto-class, cardano-crypto-praos, cborg
, criterion, cryptonite, deepseq, fetchgit, formatting, lib
, nothunks, pretty-show, quickcheck-instances, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.1.0.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-tests/; echo source root reset to $sourceRoot";
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