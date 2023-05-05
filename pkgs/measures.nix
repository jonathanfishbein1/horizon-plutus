{ mkDerivation, QuickCheck, base, base-deriving-via, fetchgit, lib
, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "measures";
  version = "0.1.0.2";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/measures/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base-deriving-via ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "An abstraction for (tuples of) measured quantities";
  license = lib.licenses.asl20;
  broken = false;
}