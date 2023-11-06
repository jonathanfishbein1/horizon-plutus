{ mkDerivation, aeson, base, cardano-binary, deepseq, fetchzip, lib
, mmorph, nothunks, quiet, serialise, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.1.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-slotting-0.1.1.1.tar.gz";
    sha256 = "0ylyx4xka8xm6si99dpyvwzzf5xy76kh569j3n3yci43lkd5ial6";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-binary deepseq mmorph nothunks quiet serialise
    time
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