{ mkDerivation, QuickCheck, aeson, base, cardano-binary, deepseq
, fetchzip, lib, mmorph, nothunks, quiet, serialise, tasty
, tasty-quickcheck, time, tree-diff
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.2.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-slotting-0.1.2.0.tar.gz";
    sha256 = "1p7g5vlgvhxgybifcp719pd4ghgidqvnknnb8avsn4q3dhqdzvpr";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-binary deepseq mmorph nothunks QuickCheck quiet
    serialise time tree-diff
  ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Key slotting types for cardano libraries";
  license = lib.licenses.asl20;
  broken = false;
}