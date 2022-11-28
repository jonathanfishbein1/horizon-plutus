{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-binary
, cardano-prelude-test
, cborg
, containers
, fetchgit
, formatting
, hedgehog
, hspec
, lib
, pretty-show
, quickcheck-instances
, text
, time
, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.3.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/binary/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-prelude-test
    cborg
    containers
    formatting
    hedgehog
    hspec
    pretty-show
    QuickCheck
    quickcheck-instances
    text
    time
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-binary exposed to other packages";
  license = lib.licenses.mit;
  broken = false;
}
