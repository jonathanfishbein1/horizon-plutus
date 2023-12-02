{ mkDerivation, aeson, base, base16-bytestring, bytestring, cborg
, containers, data-default-class, deepseq, deriving-compat, doctest
, extra, fetchzip, filepath, flat, ghc-prim, hashable, hedgehog
, hedgehog-fn, lens, lib, memory, mtl, plutus-core, pretty-show
, prettyprinter, serialise, tagged, tasty, tasty-hedgehog
, tasty-hunit, template-haskell, text, th-abstraction, th-compat
, transformers
}:
mkDerivation {
  pname = "plutus-tx";
  version = "1.15.0.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-tx-1.15.0.1.tar.gz";
    sha256 = "1amv7cf25f4jd97nc8ybxq7hw63snkfl7z192bcis5cyqii6idha";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers data-default-class deepseq
    deriving-compat extra flat ghc-prim hashable hedgehog lens memory
    mtl plutus-core prettyprinter serialise tagged tasty tasty-hedgehog
    template-haskell text th-abstraction th-compat transformers
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bytestring cborg filepath hedgehog
    hedgehog-fn plutus-core pretty-show serialise tasty tasty-hedgehog
    tasty-hunit text transformers
  ];
  testToolDepends = [ doctest ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Libraries for Plutus Tx and its prelude";
  license = lib.licenses.asl20;
  broken = false;
}