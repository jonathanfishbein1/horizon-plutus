{ mkDerivation, base, cardano-ledger-allegra, cardano-ledger-mary
, cardano-ledger-shelley, fetchgit, lib
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cardano-ledger-allegra cardano-ledger-mary
    cardano-ledger-shelley
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Deprecated package that used to implement Allegra and Mary eras";
  license = lib.licenses.asl20;
  broken = false;
}