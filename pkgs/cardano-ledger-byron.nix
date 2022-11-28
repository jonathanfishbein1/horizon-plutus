{ mkDerivation
, Cabal
, aeson
, base
, base16-bytestring
, base58-bytestring
, bimap
, binary
, byron-spec-chain
, byron-spec-ledger
, bytestring
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
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The blockchain layer of Cardano during the Byron era";
  license = lib.licenses.asl20;
  broken = false;
}
