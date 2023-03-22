{ mkDerivation, QuickCheck, aeson, aeson-pretty, attoparsec, base
, base16-bytestring, bytestring, canonical-json, cardano-prelude
, containers, cryptonite, fetchzip, formatting, ghc-heap, ghc-prim
, hedgehog, hspec, lib, pretty-show, quickcheck-instances
, template-haskell, text, th-compat, time
}:
mkDerivation {
  pname = "cardano-prelude-test";
  version = "0.1.0.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-prelude-test-0.1.0.1.tar.gz";
    sha256 = "0sf8pyil2h08kl3mr18ddrdhwz2caaqzj5mlys6g69xp4gf9b8lj";
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