{ mkDerivation, base, base16-bytestring, bimap, byron-spec-chain
, byron-spec-ledger, bytestring, cardano-crypto
, cardano-crypto-test, cardano-crypto-wrapper
, cardano-ledger-binary, cardano-ledger-byron, cardano-prelude
, cardano-prelude-test, containers, directory, fetchgit, filepath
, formatting, generic-monoid, heapwords, hedgehog, lib, microlens
, resourcet, small-steps, small-steps-test, streaming, tasty
, tasty-hedgehog, text, time, vector
}:
mkDerivation {
  pname = "cardano-ledger-byron-test";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/impl/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base base16-bytestring bimap byron-spec-chain byron-spec-ledger
    bytestring cardano-crypto cardano-crypto-test
    cardano-crypto-wrapper cardano-ledger-binary cardano-ledger-byron
    cardano-prelude cardano-prelude-test containers directory filepath
    formatting generic-monoid heapwords hedgehog microlens resourcet
    small-steps small-steps-test streaming tasty tasty-hedgehog text
    time vector
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