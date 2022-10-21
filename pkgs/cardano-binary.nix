{ mkDerivation, aeson, base, bytestring, cardano-prelude-test
, cborg, containers, data-fix, deepseq, fetchgit, formatting
, hedgehog, hspec, lib, nothunks, pretty-show, primitive
, QuickCheck, quickcheck-instances, recursion-schemes
, safe-exceptions, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.5.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/binary/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson base bytestring cborg containers data-fix deepseq formatting
    nothunks primitive recursion-schemes safe-exceptions tagged text
    time vector
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude-test cborg containers formatting
    hedgehog hspec pretty-show QuickCheck quickcheck-instances tagged
    text time vector
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
}