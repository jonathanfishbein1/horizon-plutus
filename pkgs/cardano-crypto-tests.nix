{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto-class, cardano-crypto-praos, cborg
, containers, contra-tracer, criterion, cryptonite, deepseq
, fetchgit, formatting, io-classes, lib, mtl, nothunks, pretty-show
, quickcheck-instances, random, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.2.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-tests/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-crypto-class cardano-crypto-praos cborg containers
    contra-tracer criterion cryptonite deepseq formatting io-classes
    mtl nothunks pretty-show QuickCheck quickcheck-instances random
    tasty tasty-hunit tasty-quickcheck
  ];
  testHaskellDepends = [
    base cardano-crypto-class tasty tasty-quickcheck
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