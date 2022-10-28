{ mkDerivation
, base
, bimap
, byron-spec-ledger
, bytestring
, containers
, data-ordlist
, fetchgit
, hashable
, hedgehog
, lib
, microlens
, microlens-th
, small-steps
, small-steps-test
, tasty
, tasty-hedgehog
, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-chain";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/chain/executable-spec/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    bimap
    byron-spec-ledger
    bytestring
    containers
    hashable
    hedgehog
    microlens
    microlens-th
    small-steps
    small-steps-test
  ];
  testHaskellDepends = [
    base
    byron-spec-ledger
    containers
    data-ordlist
    hedgehog
    microlens
    small-steps
    small-steps-test
    tasty
    tasty-hedgehog
    tasty-hunit
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-legder";
  description = "Executable specification of the Cardano blockchain";
  license = lib.licenses.asl20;
}
