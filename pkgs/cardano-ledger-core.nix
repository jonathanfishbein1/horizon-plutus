{ mkDerivation, FailT, QuickCheck, aeson, base, base16-bytestring
, binary, bytestring, cardano-crypto, cardano-crypto-class
, cardano-crypto-praos, cardano-crypto-wrapper, cardano-data
, cardano-ledger-binary, cardano-ledger-byron
, cardano-ledger-byron-test, cardano-prelude, cardano-slotting
, cardano-strict-containers, containers, data-default-class
, deepseq, fetchgit, generic-random, genvalidity
, genvalidity-scientific, groups, heapwords, hedgehog-quickcheck
, hspec, iproute, lib, microlens, mtl, network, non-integral
, nothunks, partial-order, primitive, quiet, scientific
, set-algebra, small-steps, text, time, transformers, tree-diff
, validation-selective, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-core";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring binary bytestring cardano-crypto
    cardano-crypto-class cardano-crypto-praos cardano-crypto-wrapper
    cardano-data cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-byron-test cardano-prelude cardano-slotting
    cardano-strict-containers containers data-default-class deepseq
    FailT generic-random genvalidity groups heapwords
    hedgehog-quickcheck hspec iproute microlens mtl network
    non-integral nothunks partial-order primitive QuickCheck quiet
    scientific set-algebra small-steps text time transformers tree-diff
    validation-selective vector-map
  ];
  testHaskellDepends = [
    aeson base binary bytestring cardano-crypto-class
    cardano-ledger-binary FailT genvalidity genvalidity-scientific
    scientific
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Core components of Cardano ledgers from the Shelley release on";
  license = lib.licenses.asl20;
  broken = false;
}