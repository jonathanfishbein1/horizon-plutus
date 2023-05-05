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
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
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