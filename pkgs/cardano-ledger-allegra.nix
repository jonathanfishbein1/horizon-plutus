{ mkDerivation, QuickCheck, base, bytestring, cardano-crypto-class
, cardano-ledger-binary, cardano-ledger-core
, cardano-ledger-shelley, cardano-slotting
, cardano-strict-containers, cborg, containers, deepseq, fetchgit
, generic-random, lib, microlens, nothunks, small-steps
, transformers, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-allegra";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/allegra/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-crypto-class cardano-ledger-binary
    cardano-ledger-core cardano-ledger-shelley cardano-slotting
    cardano-strict-containers cborg containers deepseq generic-random
    microlens nothunks QuickCheck small-steps transformers
    validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Allegra ledger era that introduces time lock support";
  license = lib.licenses.asl20;
  broken = false;
}