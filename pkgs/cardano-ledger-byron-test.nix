{ mkDerivation
, base
, base16-bytestring
, bimap
, byron-spec-chain
, byron-spec-ledger
, bytestring
, cardano-binary
, cardano-binary-test
, cardano-crypto
, cardano-crypto-test
, cardano-crypto-wrapper
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
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "1gjfjbsj9zglxy2aas06nmr22629j1pd1nl3q584v5is6k8nxlsj";
    rev = "0d12cfa23aed9c355f66f69d7a1fcc6e82b68ea9";
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
    cardano-binary
    cardano-binary-test
    cardano-crypto
    cardano-crypto-test
    cardano-crypto-wrapper
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-ledger exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}
