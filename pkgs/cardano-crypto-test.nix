{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-binary-test
, cardano-crypto
, cardano-crypto-wrapper
, cardano-prelude
, cardano-prelude-test
, cryptonite
, fetchgit
, hedgehog
, lib
, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/test/; echo source root reset to $sourceRoot";
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-binary-test
    cardano-crypto
    cardano-crypto-wrapper
    cardano-prelude
    cardano-prelude-test
    cryptonite
    hedgehog
    memory
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-crypto exposed to other packages";
  license = lib.licenses.asl20;
}
