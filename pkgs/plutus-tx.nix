{ mkDerivation, aeson, base, base16-bytestring, bytestring, cborg
, containers, deepseq, deriving-compat, doctest, extra, fetchgit
, filepath, flat, ghc-prim, hashable, hedgehog, hedgehog-fn, lens
, lib, memory, mtl, plutus-core, pretty-show, prettyprinter
, serialise, tagged, tasty, tasty-hedgehog, tasty-hunit
, template-haskell, text, th-abstraction, th-compat, transformers
}:
mkDerivation {
  pname = "plutus-tx";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "13r06l98ndv9l4ph7mv4pv3djgq8iylp59m8lnm5hyfg59ypayr0";
    rev = "cfccccc8596859bfaa992100b11199301eb6d2bd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq deriving-compat extra
    filepath flat ghc-prim hashable hedgehog lens memory mtl
    plutus-core prettyprinter serialise tagged tasty tasty-hedgehog
    template-haskell text th-abstraction th-compat transformers
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