{ mkDerivation, QuickCheck, async, base, criterion, deepseq
, fetchgit, lib, primitive, pvar, random, reflection, tasty
, tasty-hunit, tasty-quickcheck, unliftio
}:
mkDerivation {
  pname = "cardano-mempool";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
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