{ mkDerivation, QuickCheck, async, base, criterion, deepseq
, fetchgit, lib, primitive, pvar, random, reflection, tasty
, tasty-hunit, tasty-quickcheck, unliftio
}:
mkDerivation {
  pname = "cardano-mempool";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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