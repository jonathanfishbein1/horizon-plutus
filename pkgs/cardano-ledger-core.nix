{ mkDerivation
, aeson
, base
, base16-bytestring
, binary
, bytestring
, cardano-binary
, cardano-crypto
, cardano-crypto-class
, cardano-crypto-praos
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-byron
, cardano-prelude
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
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-core";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-core/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    binary
    bytestring
    cardano-binary
    cardano-crypto
    cardano-crypto-class
    cardano-crypto-praos
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-byron
    cardano-prelude
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
    network
    non-integral
    nothunks
    partial-order
    primitive
    quiet
    scientific
    set-algebra
    small-steps
    text
    time
    transformers
    validation-selective
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Core components of Cardano ledgers from the Shelley release on";
  license = lib.licenses.asl20;
}
