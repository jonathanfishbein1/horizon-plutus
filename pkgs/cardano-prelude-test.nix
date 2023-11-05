{ mkDerivation, QuickCheck, aeson, aeson-pretty, attoparsec, base
, base16-bytestring, bytestring, canonical-json, cardano-prelude
, containers, cryptonite, fetchzip, formatting, ghc-heap, ghc-prim
, hedgehog, hspec, lib, pretty-show, quickcheck-instances
, template-haskell, text, th-compat, time
}:
mkDerivation {
  pname = "cardano-prelude-test";
  version = "0.1.0.2";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-prelude-test-0.1.0.2.tar.gz";
    sha256 = "1y9ppvqkl9ryqc8xw0mvk612py10895krki2v82w0a6b6vlzmds0";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty attoparsec base base16-bytestring bytestring
    canonical-json cardano-prelude containers cryptonite formatting
    hedgehog hspec pretty-show QuickCheck quickcheck-instances
    template-haskell text th-compat time
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude ghc-heap ghc-prim hedgehog text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Utility types and functions for testing Cardano";
  license = lib.licenses.mit;
  broken = false;
}