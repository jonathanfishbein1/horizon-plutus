{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-crypto
, cardano-crypto-class
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-byron
, cardano-ledger-core
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, data-default-class
, deepseq
, fetchgit
, groups
, heapwords
, iproute
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
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/impl/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-crypto
    cardano-crypto-class
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-byron
    cardano-ledger-core
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-default-class
    deepseq
    groups
    heapwords
    iproute
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Shelley Ledger Executable Model";
  license = lib.licenses.asl20;
}
