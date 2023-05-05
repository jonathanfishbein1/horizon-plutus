{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-crypto-class
, cardano-ledger-binary
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, deepseq
, fetchgit
, generic-random
, lib
, microlens
, nothunks
, small-steps
, transformers
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-allegra";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/allegra/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-crypto-class
    cardano-ledger-binary
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    deepseq
    generic-random
    microlens
    nothunks
    QuickCheck
    small-steps
    transformers
    validation-selective
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Allegra ledger era that introduces time lock support";
  license = lib.licenses.asl20;
  broken = false;
}
