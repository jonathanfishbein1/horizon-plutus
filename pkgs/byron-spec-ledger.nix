{ mkDerivation, Unique, base, bimap, bytestring
, cardano-crypto-class, cardano-ledger-binary, containers
, cryptonite, fetchgit, hashable, hedgehog, lib, microlens
, microlens-th, nothunks, small-steps, small-steps-test, tasty
, tasty-hedgehog, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-ledger";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/ledger/executable-spec/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bimap bytestring cardano-crypto-class cardano-ledger-binary
    containers cryptonite hashable hedgehog microlens microlens-th
    nothunks small-steps small-steps-test Unique
  ];
  testHaskellDepends = [
    base bimap containers hedgehog microlens microlens-th small-steps
    small-steps-test tasty tasty-hedgehog tasty-hunit Unique
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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