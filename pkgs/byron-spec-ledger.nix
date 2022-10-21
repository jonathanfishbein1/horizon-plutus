{ mkDerivation, base, bimap, bytestring, cardano-binary
, cardano-crypto-class, containers, cryptonite, fetchgit, hashable
, hedgehog, lib, microlens, microlens-th, nothunks, small-steps
, small-steps-test, tasty, tasty-hedgehog, tasty-hunit
, template-haskell, Unique
}:
mkDerivation {
  pname = "byron-spec-ledger";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/executable-spec/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base bimap bytestring cardano-binary cardano-crypto-class
    containers cryptonite hashable hedgehog microlens microlens-th
    nothunks small-steps small-steps-test template-haskell Unique
  ];
  testHaskellDepends = [
    base bimap containers hedgehog microlens microlens-th small-steps
    small-steps-test tasty tasty-hedgehog tasty-hunit Unique
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-legder";
  description = "Executable specification of Cardano ledger";
  license = lib.licenses.asl20;
}