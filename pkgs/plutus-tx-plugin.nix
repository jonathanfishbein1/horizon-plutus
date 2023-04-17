{ mkDerivation, PyF, array, base, bytestring, containers, deepseq
, either, extra, fetchgit, flat, ghc, ghc-prim, hedgehog
, integer-gmp, lens, lib, mtl, optparse-applicative, plutus-core
, plutus-tx, prettyprinter, tagged, tasty, tasty-hedgehog
, tasty-hunit, template-haskell, text, transformers
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/plutus";
    sha256 = "0pzzqqbp6jvrzxp7gyi4dnnc5pg0jnr76dsaq6pzn3zgr46pgbd3";
    rev = "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx-plugin/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers either extra flat ghc ghc-prim
    lens mtl plutus-core plutus-tx prettyprinter PyF template-haskell
    text transformers
  ];
  executableHaskellDepends = [
    base containers lens optparse-applicative prettyprinter PyF text
  ];
  testHaskellDepends = [
    base containers deepseq flat ghc-prim hedgehog integer-gmp lens mtl
    plutus-core plutus-tx prettyprinter tagged tasty tasty-hedgehog
    tasty-hunit template-haskell text
  ];
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