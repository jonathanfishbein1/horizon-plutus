{ mkDerivation
, aeson
, base
, base16-bytestring
, base58-bytestring
, bimap
, binary
, byron-spec-chain
, byron-spec-ledger
, bytestring
, Cabal
, canonical-json
, cardano-binary
, cardano-binary-test
, cardano-crypto
, cardano-crypto-test
, cardano-crypto-wrapper
, cardano-prelude
, cardano-prelude-test
, cborg
, containers
, contra-tracer
, cryptonite
, digest
, directory
, fetchgit
, filepath
, formatting
, generic-monoid
, heapwords
, hedgehog
, lib
, microlens
, nothunks
, quiet
, resourcet
, small-steps
, small-steps-test
, streaming
, streaming-binary
, streaming-bytestring
, tasty
, tasty-hedgehog
, text
, time
, vector
}:
mkDerivation {
  pname = "cardano-ledger-byron";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson
    base
    base58-bytestring
    bimap
    binary
    bytestring
    Cabal
    canonical-json
    cardano-binary
    cardano-crypto
    cardano-crypto-wrapper
    cardano-prelude
    cborg
    containers
    contra-tracer
    cryptonite
    digest
    directory
    filepath
    formatting
    heapwords
    nothunks
    quiet
    resourcet
    streaming
    streaming-binary
    streaming-bytestring
    text
    time
    vector
  ];
  testHaskellDepends = [
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
  description = "The blockchain layer of Cardano during the Byron era";
  license = lib.licenses.asl20;
  broken = false;
}
