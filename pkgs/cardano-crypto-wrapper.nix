{ mkDerivation
, aeson
, base
, base16-bytestring
, base64-bytestring
, base64-bytestring-type
, binary
, bytestring
, canonical-json
, cardano-binary
, cardano-binary-test
, cardano-crypto
, cardano-prelude
, cardano-prelude-test
, cryptonite
, data-default
, fetchgit
, filepath
, formatting
, heapwords
, hedgehog
, lib
, memory
, mtl
, nothunks
, text
}:
mkDerivation {
  pname = "cardano-crypto-wrapper";
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/; echo source root reset to $sourceRoot";
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    base64-bytestring
    base64-bytestring-type
    binary
    bytestring
    canonical-json
    cardano-binary
    cardano-crypto
    cardano-prelude
    cryptonite
    data-default
    formatting
    heapwords
    memory
    mtl
    nothunks
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-binary-test
    cardano-crypto
    cardano-prelude
    cardano-prelude-test
    cryptonite
    filepath
    formatting
    hedgehog
    memory
    text
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Cryptographic primitives used in the Cardano project";
  license = lib.licenses.asl20;
}
