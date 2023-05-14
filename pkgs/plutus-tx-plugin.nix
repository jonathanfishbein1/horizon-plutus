{ mkDerivation, PyF, array, base, bytestring, containers, deepseq
, either, extra, fetchgit, flat, ghc, hedgehog, lens, lib, mtl
, optparse-applicative, plutus-core, plutus-tx, prettyprinter
, tagged, tasty, tasty-hedgehog, tasty-hunit, template-haskell
, text
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "1xf2jn46rk57mq8kskp2g4ijsi69mi5awsv2jm4qnzvxvgv897da";
    rev = "5efe047b034bdd1f79df6dfa64a3c5d205ffa8f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx-plugin/; echo source root reset to $sourceRoot";
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