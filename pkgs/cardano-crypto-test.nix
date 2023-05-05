{ mkDerivation
, base
, bytestring
, cardano-crypto
, cardano-crypto-wrapper
, cardano-ledger-binary
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
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-crypto
    cardano-crypto-wrapper
    cardano-ledger-binary
    cardano-prelude
    cardano-prelude-test
    cryptonite
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
  description = "Test helpers from cardano-crypto exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}
