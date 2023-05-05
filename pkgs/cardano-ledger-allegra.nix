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
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
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