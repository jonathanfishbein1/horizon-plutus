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
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
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