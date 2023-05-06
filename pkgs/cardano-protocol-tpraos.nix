{ mkDerivation, base, bytestring, cardano-crypto-class
, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-babbage, cardano-ledger-binary
, cardano-ledger-conway, cardano-ledger-core, cardano-ledger-mary
, cardano-ledger-shelley, cardano-slotting
, cardano-strict-containers, containers, deepseq, fetchgit
, generic-random, lib, microlens, mtl, non-integral, nothunks
, quiet, set-algebra, small-steps, transformers
}:
mkDerivation {
  pname = "cardano-protocol-tpraos";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-protocol-tpraos/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-crypto-class cardano-ledger-allegra
    cardano-ledger-alonzo cardano-ledger-babbage cardano-ledger-binary
    cardano-ledger-conway cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-slotting cardano-strict-containers
    containers deepseq generic-random microlens mtl non-integral
    nothunks quiet set-algebra small-steps transformers
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