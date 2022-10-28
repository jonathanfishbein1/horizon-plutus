{ mkDerivation, base, fetchgit, lib, QuickCheck }:
mkDerivation {
  pname = "non-integral";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/non-integral/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
}
