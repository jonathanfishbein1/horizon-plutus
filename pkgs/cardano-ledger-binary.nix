{ mkDerivation
, QuickCheck
, aeson
, base
, base16-bytestring
, binary
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-crypto-praos
, cardano-crypto-tests
, cardano-prelude-test
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, data-fix
, deepseq
, fetchgit
, formatting
, half
, hedgehog
, hedgehog-quickcheck
, hspec
, iproute
, lib
, microlens
, mtl
, network
, nothunks
, plutus-ledger-api
, pretty-show
, primitive
, quickcheck-instances
, random
, recursion-schemes
, serialise
, tagged
, tasty-hunit
, text
, time
, transformers
, tree-diff
, vector
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-binary";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-binary/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    binary
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-crypto-praos
    cardano-crypto-tests
    cardano-prelude-test
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-fix
    deepseq
    formatting
    half
    hedgehog
    hspec
    iproute
    microlens
    mtl
    network
    nothunks
    plutus-ledger-api
    pretty-show
    primitive
    QuickCheck
    quickcheck-instances
    random
    recursion-schemes
    serialise
    tagged
    tasty-hunit
    text
    time
    transformers
    tree-diff
    vector
    vector-map
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-crypto-class
    cardano-crypto-praos
    cardano-prelude-test
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    hedgehog
    hedgehog-quickcheck
    hspec
    iproute
    primitive
    QuickCheck
    tagged
    text
    time
    vector
    vector-map
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Binary serialization library used throughout ledger";
  license = lib.licenses.asl20;
  broken = false;
}
