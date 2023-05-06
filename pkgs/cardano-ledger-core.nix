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
  version = "1.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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