{ mkDerivation
, MonadRandom
, base
, lib
, random
, random-shuffle
, safe
, statistics
, vector
}:
mkDerivation {
  pname = "statistics-linreg";
  version = "0.3";
  sha256 = "6273c2166b8072814ede516c7c9f1e13a158b5013938fdf83a3ea2355aee8909";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    MonadRandom
    random
    random-shuffle
    safe
    statistics
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/alpmestan/statistics-linreg";
  description = "Linear regression between two samples, based on the 'statistics' package";
  license = lib.licenses.mit;
  broken = false;
}
