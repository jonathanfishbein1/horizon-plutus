{ mkDerivation, QuickCheck, async, base, criterion, deepseq
, fetchgit, lib, primitive, pvar, random, reflection, tasty
, tasty-hunit, tasty-quickcheck, unliftio
}:
mkDerivation {
  pname = "cardano-mempool";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-mempool/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive pvar ];
  testHaskellDepends = [
    async base primitive pvar QuickCheck random reflection tasty
    tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base criterion deepseq unliftio ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-base";
  description = "Short description";
  license = lib.licenses.bsd3;
  broken = false;
}