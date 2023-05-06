{ mkDerivation, aeson, base, bytestring, cardano-crypto-class
, cardano-crypto-wrapper, cardano-data, cardano-ledger-binary
, cardano-ledger-byron, cardano-ledger-byron-test
, cardano-ledger-core, cardano-slotting, cardano-strict-containers
, containers, data-default-class, deepseq, fetchgit, generic-random
, groups, heapwords, hedgehog-quickcheck, lib, microlens, mtl
, nothunks, quiet, set-algebra, small-steps, text, time
, transformers, validation-selective, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-shelley";
  version = "1.1.1.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring cardano-crypto-class cardano-crypto-wrapper
    cardano-data cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-byron-test cardano-ledger-core cardano-slotting
    cardano-strict-containers containers data-default-class deepseq
    generic-random groups heapwords hedgehog-quickcheck microlens mtl
    nothunks quiet set-algebra small-steps text time transformers
    validation-selective vector-map
  ];
  testHaskellDepends = [ base cardano-ledger-core ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Shelley Ledger Executable Model";
  license = lib.licenses.asl20;
  broken = false;
}