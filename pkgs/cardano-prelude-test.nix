{ mkDerivation
, aeson
, aeson-pretty
, attoparsec
, base
, base16-bytestring
, bytestring
, canonical-json
, cardano-prelude
, containers
, cryptonite
, fetchgit
, formatting
, ghc-heap
, ghc-prim
, hedgehog
, hspec
, lib
, pretty-show
, QuickCheck
, quickcheck-instances
, template-haskell
, text
, th-compat
, time
}:
mkDerivation {
  pname = "cardano-prelude-test";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-prelude";
    sha256 = "1bshxlraxkm12kj5fn98n8vqwdl8ivxh069zr1y5icmfh8hv50zd";
    rev = "b6053a23f53acd5c519cc559c3861dda3ebf8b35";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-prelude-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    attoparsec
    base
    base16-bytestring
    bytestring
    canonical-json
    cardano-prelude
    containers
    cryptonite
    formatting
    hedgehog
    hspec
    pretty-show
    QuickCheck
    quickcheck-instances
    template-haskell
    text
    th-compat
    time
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-prelude
    ghc-heap
    ghc-prim
    hedgehog
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Utility types and functions for testing Cardano";
  license = lib.licenses.mit;
  broken = false;
}
