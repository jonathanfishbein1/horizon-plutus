{ mkDerivation, base, bytestring, cardano-binary
, cardano-binary-test, cardano-crypto, cardano-crypto-wrapper
, cardano-prelude, cardano-prelude-test, cryptonite, fetchgit
, hedgehog, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-crypto-wrapper cardano-prelude cardano-prelude-test
    cryptonite hedgehog memory
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