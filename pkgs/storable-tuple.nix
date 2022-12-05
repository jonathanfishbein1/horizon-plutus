{ mkDerivation
, base
, base-orphans
, lib
, storable-record
, utility-ht
}:
mkDerivation {
  pname = "storable-tuple";
  version = "0.0.3.3";
  sha256 = "dcfac049527a45c386c80a7c40ec211455b83d74311af88fa686063b5f87df35";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base-orphans
    storable-record
    utility-ht
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~thielema/storable-tuple/";
  description = "Storable instance for pairs and triples";
  license = lib.licenses.bsd3;
  broken = false;
}
