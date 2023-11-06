{ mkDerivation, PyF, array, base, bytestring, containers, deepseq
, either, extra, fetchzip, flat, ghc, hedgehog, lens, lib, mtl
, optparse-applicative, plutus-core, plutus-tx, prettyprinter
, tagged, tasty, tasty-hedgehog, tasty-hunit, template-haskell
, text
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.15.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-tx-plugin-1.15.0.0.tar.gz";
    sha256 = "0356rmz5vsvxypq5xg7lfisbidn4rcxn35r6jwlfh0sldywkklbl";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers either extra flat ghc lens mtl
    plutus-core plutus-tx prettyprinter PyF template-haskell text
  ];
  executableHaskellDepends = [
    base containers lens optparse-applicative prettyprinter PyF text
  ];
  testHaskellDepends = [
    base containers deepseq flat hedgehog lens mtl plutus-core
    plutus-tx tagged tasty tasty-hedgehog tasty-hunit template-haskell
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Plutus Tx compiler and GHC plugin";
  license = lib.licenses.asl20;
  broken = false;
}