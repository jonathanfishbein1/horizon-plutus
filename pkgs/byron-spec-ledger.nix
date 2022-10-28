{ mkDerivation
, base
, bimap
, bytestring
, cardano-binary
, cardano-crypto-class
, containers
, cryptonite
, fetchgit
, hashable
, hedgehog
, lib
, microlens
, microlens-th
, nothunks
, small-steps
, small-steps-test
, tasty
, tasty-hedgehog
, tasty-hunit
, Unique
}:
mkDerivation {
  pname = "byron-spec-ledger";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/executable-spec/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    bimap
    bytestring
    cardano-binary
    cardano-crypto-class
    containers
    cryptonite
    hashable
    hedgehog
    microlens
    microlens-th
    nothunks
    small-steps
    small-steps-test
    Unique
  ];
  testHaskellDepends = [
    base
    bimap
    containers
    hedgehog
    microlens
    microlens-th
    small-steps
    small-steps-test
    tasty
    tasty-hedgehog
    tasty-hunit
    Unique
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-legder";
  description = "Executable specification of Cardano ledger";
  license = lib.licenses.asl20;
}
