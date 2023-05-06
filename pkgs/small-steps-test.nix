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
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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