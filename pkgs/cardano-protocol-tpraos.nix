{ mkDerivation
, base
, bytestring
, cardano-crypto-class
, cardano-ledger-allegra
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-binary
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-mary
, cardano-ledger-shelley
, cardano-slotting
, cardano-strict-containers
, containers
, deepseq
, fetchgit
, generic-random
, lib
, microlens
, mtl
, non-integral
, nothunks
, quiet
, set-algebra
, small-steps
, transformers
}:
mkDerivation {
  pname = "cardano-protocol-tpraos";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-protocol-tpraos/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-crypto-class
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-binary
    cardano-ledger-conway
    cardano-ledger-core
    cardano-ledger-mary
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    containers
    deepseq
    generic-random
    microlens
    mtl
    non-integral
    nothunks
    quiet
    set-algebra
    small-steps
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano Protocol: Transitional Praos";
  license = lib.licenses.asl20;
  broken = false;
}
