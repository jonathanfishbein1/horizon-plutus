{ mkDerivation, base, lib }:
mkDerivation {
  pname = "timeit";
  version = "2.0";
  sha256 = "a14df4e578db371e5c609f0784209144545f9cae90026d24a3398042f7c591ea";
  revision = "2";
  editedCabalFile = "1vgxfk2021jh6jk3dimchmf9f71844zj080342qvnn5lck7c7mrm";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/merijn/timeit";
  description = "Time monadic computations with an IO base";
  license = lib.licenses.bsd3;
  broken = false;
}