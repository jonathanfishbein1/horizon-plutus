{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-binary-test
, cardano-crypto
, cardano-crypto-wrapper
, cardano-prelude
, cardano-prelude-test
, cryptonite
, fetchgit
, hedgehog
, lib
, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.3.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/crypto/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-binary-test
    cardano-crypto
    cardano-crypto-wrapper
    cardano-prelude
    cardano-prelude-test
    cryptonite
    hedgehog
    memory
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
