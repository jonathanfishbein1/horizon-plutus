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
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
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
