{ mkDerivation, PyF, array, base, bytestring, containers, deepseq
, either, extra, fetchzip, flat, ghc, hedgehog, lens, lib, mtl
, optparse-applicative, plutus-core, plutus-tx, prettyprinter
, tagged, tasty, tasty-hedgehog, tasty-hunit, template-haskell
, text
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.15.0.1";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/plutus-tx-plugin-1.15.0.1.tar.gz";
    sha256 = "0k6r2mg89lr508jv2cbh1grfhgvlq50lz6g9rvszv3v0hqra13ax";
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Plutus Tx compiler and GHC plugin";
  license = lib.licenses.asl20;
  broken = false;
}