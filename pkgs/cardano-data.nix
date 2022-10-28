{ mkDerivation
, aeson
, base
, bytestring
, cardano-binary
, cardano-strict-containers
, cborg
, containers
, deepseq
, fetchgit
, formatting
, lib
, microlens
, mtl
, nothunks
, primitive
, QuickCheck
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, transformers
, vector
, vector-map
}:
mkDerivation {
  pname = "cardano-data";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-data/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    cardano-binary
    cardano-strict-containers
    cborg
    containers
    deepseq
    formatting
    microlens
    mtl
    nothunks
    primitive
    QuickCheck
    text
    transformers
    vector
    vector-map
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-strict-containers
    cborg
    containers
    QuickCheck
    tasty
    tasty-hunit
    tasty-quickcheck
    text
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Specialized data for Cardano project";
  license = lib.licenses.asl20;
}
