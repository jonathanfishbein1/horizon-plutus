{ mkDerivation
, base
, base16-bytestring
, bimap
, byron-spec-chain
, byron-spec-ledger
, bytestring
, cardano-crypto
, cardano-crypto-test
, cardano-crypto-wrapper
, cardano-ledger-binary
, cardano-ledger-byron
, cardano-prelude
, cardano-prelude-test
, containers
, directory
, fetchgit
, filepath
, formatting
, generic-monoid
, heapwords
, hedgehog
, lib
, microlens
, resourcet
, small-steps
, small-steps-test
, streaming
, tasty
, tasty-hedgehog
, text
, time
, vector
}:
mkDerivation {
  pname = "cardano-ledger-byron-test";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/impl/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    base16-bytestring
    bimap
    byron-spec-chain
    byron-spec-ledger
    bytestring
    cardano-crypto
    cardano-crypto-test
    cardano-crypto-wrapper
    cardano-ledger-binary
    cardano-ledger-byron
    cardano-prelude
    cardano-prelude-test
    containers
    directory
    filepath
    formatting
    generic-monoid
    heapwords
    hedgehog
    microlens
    resourcet
    small-steps
    small-steps-test
    streaming
    tasty
    tasty-hedgehog
    text
    time
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-ledger exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}
