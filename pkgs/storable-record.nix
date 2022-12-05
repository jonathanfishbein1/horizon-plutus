{ mkDerivation
, QuickCheck
, base
, lib
, semigroups
, transformers
, utility-ht
}:
mkDerivation {
  pname = "storable-record";
  version = "0.0.6";
  sha256 = "cd09cc2dda10c3addcb6a1f71f964fb33fd8ab4d2b4acd94cd08dfbc180b8cb4";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    QuickCheck
    semigroups
    transformers
    utility-ht
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~thielema/storable-record/";
  description = "Elegant definition of Storable instances for records";
  license = lib.licenses.bsd3;
  broken = false;
}
