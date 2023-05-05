{ mkDerivation, QuickCheck, base, fetchgit, io-classes, io-sim, lib
, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "monoidal-synchronisation";
  version = "0.1.0.3";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/monoidal-synchronisation/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base io-classes io-sim QuickCheck tasty tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Monoidal synchronisation";
  license = lib.licenses.asl20;
  broken = false;
}