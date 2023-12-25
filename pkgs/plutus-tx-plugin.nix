{ mkDerivation, PyF, array, base, bytestring, containers, deepseq
, either, extra, fetchzip, filepath, flat, ghc, hedgehog, lens, lib
, mtl, optparse-applicative, plutus-core, plutus-tx, prettyprinter
, tagged, tasty, tasty-hedgehog, tasty-hunit, template-haskell
, text, uniplate
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.19.0.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/plutus-tx-plugin-1.19.0.0.tar.gz";
    sha256 = "13gfaj53kzch19c2d2p8c00jdij0s4xbqbjrkw8qb9sdl4fh6w9x";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers either extra flat ghc lens mtl
    plutus-core plutus-tx prettyprinter PyF template-haskell text
    uniplate
  ];
  executableHaskellDepends = [
    base containers lens optparse-applicative prettyprinter PyF text
  ];
  testHaskellDepends = [
    base containers deepseq filepath flat hedgehog lens mtl plutus-core
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