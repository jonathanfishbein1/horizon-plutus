{ mkDerivation, QuickCheck, Unique, base, cardano-crypto-class
, cardano-ledger-binary, cardano-strict-containers, containers
, deepseq, fetchgit, hedgehog, lib, microlens, microlens-th, mtl
, nothunks, small-steps, tasty, tasty-expected-failure
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, transformers
}:
mkDerivation {
  pname = "small-steps-test";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cardano-ledger-binary cardano-strict-containers deepseq
    hedgehog microlens microlens-th mtl nothunks QuickCheck small-steps
    tasty-hunit transformers
  ];
  testHaskellDepends = [
    base cardano-crypto-class cardano-ledger-binary containers hedgehog
    mtl QuickCheck small-steps tasty tasty-expected-failure
    tasty-hedgehog tasty-hunit tasty-quickcheck Unique
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Small step semantics testing library";
  license = lib.licenses.asl20;
  broken = false;
}