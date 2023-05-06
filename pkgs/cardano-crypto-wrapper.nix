{ mkDerivation, aeson, base, base16-bytestring, base64-bytestring
, base64-bytestring-type, binary, bytestring, canonical-json
, cardano-crypto, cardano-ledger-binary, cardano-prelude
, cardano-prelude-test, cryptonite, data-default, deepseq, fetchgit
, filepath, formatting, heapwords, hedgehog, lib, memory, nothunks
, text
}:
mkDerivation {
  pname = "cardano-crypto-wrapper";
  version = "1.5.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base base16-bytestring base64-bytestring
    base64-bytestring-type binary bytestring canonical-json
    cardano-crypto cardano-ledger-binary cardano-prelude cryptonite
    data-default deepseq formatting heapwords memory nothunks text
  ];
  testHaskellDepends = [
    base bytestring cardano-crypto cardano-ledger-binary
    cardano-prelude cardano-prelude-test cryptonite filepath formatting
    hedgehog memory
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cryptographic primitives used in Byron era of the Cardano project";
  license = lib.licenses.asl20;
  broken = false;
}