{ mkDerivation, aeson, base, base16-bytestring, base58-bytestring
, bimap, binary, byron-spec-chain, byron-spec-ledger, bytestring
, Cabal, canonical-json, cardano-binary, cardano-binary-test
, cardano-crypto, cardano-crypto-test, cardano-crypto-wrapper
, cardano-prelude, cardano-prelude-test, cborg, containers
, contra-tracer, cryptonite, deepseq, digest, directory, fetchgit
, filepath, formatting, generic-monoid, heapwords, hedgehog, lib
, microlens, mtl, nothunks, quiet, resourcet, small-steps
, small-steps-test, streaming, streaming-binary
, streaming-bytestring, tasty, tasty-hedgehog, text, time, vector
}:
mkDerivation {
  pname = "cardano-ledger-byron";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/impl/; echo source root reset to $sourceRoot";
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base58-bytestring bimap binary bytestring Cabal
    canonical-json cardano-binary cardano-crypto cardano-crypto-wrapper
    cardano-prelude cborg containers contra-tracer cryptonite deepseq
    digest directory filepath formatting heapwords mtl nothunks quiet
    resourcet streaming streaming-binary streaming-bytestring text time
    vector
  ];
  testHaskellDepends = [
    base base16-bytestring bimap byron-spec-chain byron-spec-ledger
    bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-crypto-test cardano-crypto-wrapper cardano-prelude
    cardano-prelude-test cborg containers directory filepath formatting
    generic-monoid heapwords hedgehog microlens resourcet small-steps
    small-steps-test streaming tasty tasty-hedgehog text time vector
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "The blockchain layer of Cardano during the Byron era";
  license = lib.licenses.asl20;
}