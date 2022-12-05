{ mkDerivation
, HUnit
, base
, doctest
, generic-lens-core
, inspection-testing
, lens
, lib
, profunctors
, text
}:
mkDerivation {
  pname = "generic-lens";
  version = "2.2.1.0";
  sha256 = "ea82e34d694f15086d643f34312e319ff7fa529fd776fcf935fabf988c21569d";
  revision = "1";
  editedCabalFile = "1wzxvfi9kzhbglih1syqhx42kcsvlinnfc338fl731k6hc95hmlm";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    generic-lens-core
    profunctors
    text
  ];
  testHaskellDepends = [
    base
    doctest
    HUnit
    inspection-testing
    lens
    profunctors
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kcsongor/generic-lens";
  description = "Generically derive traversals, lenses and prisms";
  license = lib.licenses.bsd3;
  broken = false;
}
