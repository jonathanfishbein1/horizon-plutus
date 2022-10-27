{ mkDerivation
, ansi-wl-pprint
, base
, cardano-data
, containers
, fetchgit
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "set-algebra";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "109piw0q5nlypsywkmkwng4ixalbfmzf379b4n931ghih54xzwja";
    rev = "bc859395040abf075f4ca44b4ce8c221d2c4bb66";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/set-algebra/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    ansi-wl-pprint
    base
    cardano-data
    containers
  ];
  testHaskellDepends = [
    base
    cardano-data
    containers
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Set Algebra";
  license = lib.licenses.asl20;
}
