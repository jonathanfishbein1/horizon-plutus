{ mkDerivation, aeson, base, bytestring, cardano-crypto-class
, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-babbage, cardano-ledger-binary
, cardano-ledger-core, cardano-ledger-mary, cardano-ledger-shelley
, cardano-strict-containers, containers, data-default-class
, deepseq, fetchgit, lib, microlens, nothunks, set-algebra
, small-steps, text, transformers, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-conway";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/conway/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring cardano-crypto-class cardano-ledger-allegra
    cardano-ledger-alonzo cardano-ledger-babbage cardano-ledger-binary
    cardano-ledger-core cardano-ledger-mary cardano-ledger-shelley
    cardano-strict-containers containers data-default-class deepseq
    microlens nothunks set-algebra small-steps text transformers
    validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano ledger with an updated on-chain governance system";
  license = lib.licenses.asl20;
  broken = false;
}