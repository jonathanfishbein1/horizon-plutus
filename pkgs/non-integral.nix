{ mkDerivation, base, fetchgit, lib, QuickCheck }:
mkDerivation {
  pname = "non-integral";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "109piw0q5nlypsywkmkwng4ixalbfmzf379b4n931ghih54xzwja";
    rev = "bc859395040abf075f4ca44b4ce8c221d2c4bb66";
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
