{ mkDerivation
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-data
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, deepseq
, fetchgit
, groups
, lib
, microlens
, mtl
, nothunks
, primitive
, small-steps
, text
, transformers
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/impl/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-data
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    deepseq
    groups
    microlens
    mtl
    nothunks
    primitive
    small-steps
    text
    transformers
    validation-selective
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Shelley ledger with multiasset and time lock support";
  license = lib.licenses.asl20;
}
