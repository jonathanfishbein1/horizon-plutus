{ mkDerivation, PyF, array, base, bytestring, containers, either
, extra, fetchzip, flat, ghc, lens, lib, mtl, optparse-applicative
, plutus-core, plutus-tx, prettyprinter, tagged, tasty
, template-haskell, text
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.10.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-tx-plugin-1.10.0.0.tar.gz";
    sha256 = "1s33svck2lz91ryvjkhwqcl1zip7lmag1w8b6a7rm0ilxb4zcfjb";
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
  testHaskellDepends = [ base plutus-tx tagged tasty ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Plutus Tx compiler and GHC plugin";
  license = lib.licenses.asl20;
  broken = false;
}