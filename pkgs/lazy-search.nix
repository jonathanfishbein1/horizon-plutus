{ mkDerivation, base, lib, size-based }:
mkDerivation {
  pname = "lazy-search";
  version = "0.1.3.0";
  sha256 = "56a7ec14260265d3c739f42a519b7cdd9c4ebf8d64ee1b290a05a284ee139aa8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base size-based ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Finds values satisfying a lazy predicate";
  license = lib.licenses.bsd3;
  broken = false;
}
