{ mkDerivation
, aeson
, base
, base16-bytestring
, base64-bytestring
, base64-bytestring-type
, binary
, bytestring
, canonical-json
, cardano-crypto
, cardano-ledger-binary
, cardano-prelude
, cardano-prelude-test
, cryptonite
, data-default
, deepseq
, fetchgit
, filepath
, formatting
, heapwords
, hedgehog
, lib
, memory
, nothunks
, text
}:
mkDerivation {
  pname = "cardano-crypto-wrapper";
  version = "1.5.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
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
    cardano-crypto
    cardano-ledger-binary
    cardano-prelude
    cryptonite
    data-default
    deepseq
    formatting
    heapwords
    memory
    nothunks
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-crypto
    cardano-ledger-binary
    cardano-prelude
    cardano-prelude-test
    cryptonite
    filepath
    formatting
    hedgehog
    memory
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cryptographic primitives used in Byron era of the Cardano project";
  license = lib.licenses.asl20;
  broken = false;
}
