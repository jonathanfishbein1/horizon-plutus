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
  version = "1.8.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-tx-1.8.0.0.tar.gz";
    sha256 = "0llygn64vmswkx5rxmkxrf8ylgzsb39g5fr3p4zy13dd0dqa5ffm";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers data-default-class deepseq
    deriving-compat extra filepath flat ghc-prim hashable hedgehog lens
    memory mtl plutus-core prettyprinter serialise tagged tasty
    tasty-hedgehog template-haskell text th-abstraction th-compat
    transformers
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