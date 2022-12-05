{ mkDerivation
, HUnit
, base
, bifunctors
, contravariant
, ghc-prim
, lib
, linear-base
, profunctors
, tagged
, transformers
}:
mkDerivation {
  pname = "one-liner";
  version = "2.1";
  sha256 = "d0e51f172e8216fa587cde54d7cafc1e28f6ea4e2708a27b6b3a3634da8eed25";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bifunctors
    contravariant
    ghc-prim
    linear-base
    profunctors
    tagged
    transformers
  ];
  testHaskellDepends = [ base contravariant HUnit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sjoerdvisscher/one-liner";
  description = "Constraint-based generics";
  license = lib.licenses.bsd3;
  broken = false;
}
