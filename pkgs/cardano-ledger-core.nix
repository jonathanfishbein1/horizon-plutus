{ mkDerivation
, FailT
, QuickCheck
, aeson
, base
, base16-bytestring
, binary
, bytestring
, cardano-crypto
, cardano-crypto-class
, cardano-crypto-praos
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-binary
, cardano-ledger-byron
, cardano-ledger-byron-test
, cardano-prelude
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, deepseq
, fetchgit
, generic-random
, genvalidity
, genvalidity-scientific
, groups
, heapwords
, hedgehog-quickcheck
, hspec
, iproute
, lib
, microlens
, mtl
, network
, non-integral
, nothunks
, partial-order
, primitive
, quiet
, scientific
, set-algebra
, small-steps
, text
, time
, transformers
, tree-diff
, validation-selective
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-core";
  version = "1.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    binary
    bytestring
    cardano-crypto
    cardano-crypto-class
    cardano-crypto-praos
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-binary
    cardano-ledger-byron
    cardano-ledger-byron-test
    cardano-prelude
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    deepseq
    FailT
    generic-random
    genvalidity
    groups
    heapwords
    hedgehog-quickcheck
    hspec
    iproute
    microlens
    mtl
    network
    non-integral
    nothunks
    partial-order
    primitive
    QuickCheck
    quiet
    scientific
    set-algebra
    small-steps
    text
    time
    transformers
    tree-diff
    validation-selective
    vector-map
  ];
  testHaskellDepends = [
    aeson
    base
    binary
    bytestring
    cardano-crypto-class
    cardano-ledger-binary
    containers
    FailT
    genvalidity
    genvalidity-scientific
    scientific
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Core components of Cardano ledgers from the Shelley release on";
  license = lib.licenses.asl20;
  broken = false;
}
