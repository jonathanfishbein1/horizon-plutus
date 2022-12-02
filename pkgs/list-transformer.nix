{ mkDerivation, base, doctest, lib, mmorph, mtl }:
mkDerivation {
  pname = "list-transformer";
  version = "1.0.9";
  sha256 = "b90b23921cdab8b38278b2129130fd0e0e7c7a04ca8c4e02f64a6bea7af66dd3";
  revision = "1";
  editedCabalFile = "1d41pbd7kg8im5bvzhkndr6lr106rpd7m1pqb39zgnj5cbmgaql3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mmorph mtl ];
  testHaskellDepends = [ base doctest ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Gabriella439/Haskell-List-Transformer-Library";
  description = "List monad transformer";
  license = lib.licenses.bsd3;
  broken = false;
}
