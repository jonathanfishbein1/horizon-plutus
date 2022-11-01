{ mkDerivation
, base
, base-deriving-via
, fetchgit
, lib
, QuickCheck
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "measures";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/measures/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [ base base-deriving-via ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "An abstraction for (tuples of) measured quantities";
  license = lib.licenses.asl20;
}
