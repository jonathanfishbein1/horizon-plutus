{ mkDerivation, base, bytestring, cardano-crypto
, cardano-crypto-wrapper, cardano-ledger-binary, cardano-prelude
, cardano-prelude-test, cryptonite, fetchgit, hedgehog, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base bytestring cardano-crypto cardano-crypto-wrapper
    cardano-ledger-binary cardano-prelude cardano-prelude-test
    cryptonite hedgehog memory
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-crypto exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}