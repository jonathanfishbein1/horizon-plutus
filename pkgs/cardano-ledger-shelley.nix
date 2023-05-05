{ mkDerivation
, aeson
, base
, bytestring
, cardano-crypto-class
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-binary
, cardano-ledger-byron
, cardano-ledger-byron-test
, cardano-ledger-core
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, deepseq
, fetchgit
, generic-random
, groups
, heapwords
, hedgehog-quickcheck
, lib
, microlens
, mtl
, nothunks
, quiet
, set-algebra
, small-steps
, text
, time
, transformers
, validation-selective
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-shelley";
  version = "1.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    cardano-crypto-class
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-binary
    cardano-ledger-byron
    cardano-ledger-byron-test
    cardano-ledger-core
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    deepseq
    generic-random
    groups
    heapwords
    hedgehog-quickcheck
    microlens
    mtl
    nothunks
    quiet
    set-algebra
    small-steps
    text
    time
    transformers
    validation-selective
    vector-map
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
