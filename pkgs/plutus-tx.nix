{ mkDerivation, aeson, base, base16-bytestring, bytestring, cborg
, containers, deepseq, deriving-compat, doctest, extra, fetchgit
, filepath, flat, ghc-prim, hashable, hedgehog, hedgehog-fn, lens
, lib, memory, mtl, plutus-core, pretty-show, prettyprinter
, serialise, tagged, tasty, tasty-hedgehog, tasty-hunit
, template-haskell, text, th-abstraction, th-compat, transformers
}:
mkDerivation {
  pname = "plutus-tx";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "1xf2jn46rk57mq8kskp2g4ijsi69mi5awsv2jm4qnzvxvgv897da";
    rev = "5efe047b034bdd1f79df6dfa64a3c5d205ffa8f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq deriving-compat extra
    filepath flat ghc-prim hashable lens memory mtl plutus-core
    prettyprinter serialise tagged tasty template-haskell text
    th-abstraction th-compat transformers
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bytestring cborg filepath hedgehog
    hedgehog-fn plutus-core pretty-show serialise tasty tasty-hedgehog
    tasty-hunit text transformers
  ];
  testToolDepends = [ doctest ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Libraries for Plutus Tx and its prelude";
  license = lib.licenses.asl20;
  broken = false;
}