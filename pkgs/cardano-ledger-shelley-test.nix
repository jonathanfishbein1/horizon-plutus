{ mkDerivation
, QuickCheck
, aeson
, base
, base16-bytestring
, binary
, bytestring
, cardano-binary
, cardano-crypto
, cardano-crypto-class
, cardano-crypto-praos
, cardano-crypto-test
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-byron
, cardano-ledger-byron-test
, cardano-ledger-core
, cardano-ledger-pretty
, cardano-ledger-shelley
, cardano-protocol-tpraos
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, criterion
, data-default-class
, deepseq
, fetchgit
, generic-random
, groups
, hashable
, hedgehog
, hedgehog-quickcheck
, iproute
, lib
, microlens
, mtl
, nothunks
, plutus-ledger-api
, prettyprinter
, process-extras
, scientific
, serialise
, set-algebra
, small-steps
, small-steps-test
, tasty
, tasty-hedgehog
, tasty-hunit
, tasty-quickcheck
, text
, time
, transformers
, tree-diff
, unliftio
, vector
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-shelley-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    base16-bytestring
    binary
    bytestring
    cardano-binary
    cardano-crypto
    cardano-crypto-class
    cardano-crypto-test
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-byron
    cardano-ledger-byron-test
    cardano-ledger-core
    cardano-ledger-pretty
    cardano-ledger-shelley
    cardano-protocol-tpraos
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-default-class
    deepseq
    generic-random
    hashable
    hedgehog
    hedgehog-quickcheck
    iproute
    microlens
    mtl
    nothunks
    plutus-ledger-api
    process-extras
    QuickCheck
    serialise
    set-algebra
    small-steps
    small-steps-test
    tasty
    tasty-hunit
    tasty-quickcheck
    text
    time
    transformers
    tree-diff
    unliftio
    vector
    vector-map
  ];
  testHaskellDepends = [
    aeson
    base
    base16-bytestring
    binary
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-data
    cardano-ledger-byron
    cardano-ledger-core
    cardano-ledger-pretty
    cardano-ledger-shelley
    cardano-protocol-tpraos
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-default-class
    groups
    hedgehog
    iproute
    microlens
    prettyprinter
    QuickCheck
    scientific
    small-steps
    small-steps-test
    tasty
    tasty-hedgehog
    tasty-hunit
    tasty-quickcheck
    time
  ];
  benchmarkHaskellDepends = [
    base
    cardano-crypto-class
    cardano-crypto-praos
    cardano-data
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-protocol-tpraos
    cardano-slotting
    cardano-strict-containers
    containers
    criterion
    deepseq
    mtl
    QuickCheck
    set-algebra
    small-steps
    small-steps-test
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-ledger-shelley exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}
