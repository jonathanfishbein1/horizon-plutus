{ mkDerivation, aeson, base, base16-bytestring, base64-bytestring
, base64-bytestring-type, binary, bytestring, canonical-json
, cardano-binary, cardano-binary-test, cardano-crypto
, cardano-prelude, cardano-prelude-test, cryptonite, data-default
, fetchgit, filepath, formatting, heapwords, hedgehog, lib, memory
, nothunks, text
}:
mkDerivation {
  pname = "cardano-crypto-wrapper";
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base16-bytestring base64-bytestring
    base64-bytestring-type binary bytestring canonical-json
    cardano-binary cardano-crypto cardano-prelude cryptonite
    data-default formatting heapwords memory nothunks text
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-prelude cardano-prelude-test cryptonite filepath formatting
    hedgehog memory
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cryptographic primitives used in the Cardano project";
  license = lib.licenses.asl20;
  broken = false;
}