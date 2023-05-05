{ mkDerivation, QuickCheck, aeson, base, base16-bytestring
, bytestring, cardano-crypto-class, cardano-data
, cardano-ledger-allegra, cardano-ledger-binary
, cardano-ledger-core, cardano-ledger-shelley
, cardano-strict-containers, containers, deepseq, fetchgit, groups
, lib, microlens, nothunks, primitive, text
}:
mkDerivation {
  pname = "cardano-ledger-mary";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/mary/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-crypto-class
    cardano-data cardano-ledger-allegra cardano-ledger-binary
    cardano-ledger-core cardano-ledger-shelley
    cardano-strict-containers containers deepseq groups microlens
    nothunks primitive QuickCheck text
  ];
  testHaskellDepends = [
    base base16-bytestring bytestring cardano-data
    cardano-ledger-binary cardano-ledger-core
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano ledger with multiasset support";
  license = lib.licenses.asl20;
  broken = false;
}