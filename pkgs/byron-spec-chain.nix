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
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
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
