{ mkDerivation
, Unique
, base
, bimap
, bytestring
, cardano-binary
, cardano-crypto-class
, containers
, cryptonite
, fetchgit
, hashable
, hedgehog
, lib
, microlens
, microlens-th
, nothunks
, small-steps
, small-steps-test
, tasty
, tasty-hedgehog
, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-ledger";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/executable-spec/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bimap
    bytestring
    cardano-binary
    cardano-crypto-class
    containers
    cryptonite
    hashable
    hedgehog
    microlens
    microlens-th
    nothunks
    small-steps
    small-steps-test
    Unique
  ];
  testHaskellDepends = [
    base
    bimap
    containers
    hedgehog
    microlens
    microlens-th
    small-steps
    small-steps-test
    tasty
    tasty-hedgehog
    tasty-hunit
    Unique
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-legder";
  description = "Executable specification of Cardano ledger";
  license = lib.licenses.asl20;
  broken = false;
}
