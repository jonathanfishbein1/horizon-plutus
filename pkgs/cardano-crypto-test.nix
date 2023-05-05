{ mkDerivation, base, bytestring, cardano-crypto
, cardano-crypto-wrapper, cardano-ledger-binary, cardano-prelude
, cardano-prelude-test, cryptonite, fetchgit, hedgehog, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
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