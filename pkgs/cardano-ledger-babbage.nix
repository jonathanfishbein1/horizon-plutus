{ mkDerivation, QuickCheck, aeson, base, bytestring
, cardano-crypto-class, cardano-data, cardano-ledger-allegra
, cardano-ledger-alonzo, cardano-ledger-binary, cardano-ledger-core
, cardano-ledger-mary, cardano-ledger-shelley, cardano-slotting
, cardano-strict-containers, containers, deepseq, fetchgit, lib
, microlens, nothunks, plutus-ledger-api, set-algebra, small-steps
, text, transformers, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-babbage";
  version = "1.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/babbage/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring cardano-crypto-class cardano-data
    cardano-ledger-allegra cardano-ledger-alonzo cardano-ledger-binary
    cardano-ledger-core cardano-ledger-mary cardano-ledger-shelley
    cardano-slotting cardano-strict-containers containers deepseq
    microlens nothunks plutus-ledger-api QuickCheck set-algebra
    small-steps text transformers validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano ledger introducing refrence scripts and inline datums";
  license = lib.licenses.asl20;
  broken = false;
}