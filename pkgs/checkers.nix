{ mkDerivation, QuickCheck, array, base, lib, random, semigroupoids
}:
mkDerivation {
  pname = "checkers";
  version = "0.6.0";
  sha256 = "c07cd3563ea251000f7ce41db2d38e3bf94c9dcf60943a5eecc83b3089d299e4";
  revision = "1";
  editedCabalFile = "0wkvf57zd7i87z18vj285whjpcl9pscpwxz2cp7v7w6kk0769p0i";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base QuickCheck random semigroupoids
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-checkers/checkers";
  description = "Check properties on standard classes and data structures";
  license = lib.licenses.bsd3;
  broken = false;
}