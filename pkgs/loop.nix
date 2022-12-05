{ mkDerivation
, base
, criterion
, foldl
, hspec
, lib
, mtl
, random
, vector
}:
mkDerivation {
  pname = "loop";
  version = "0.3.0";
  sha256 = "92962010bdab28cc0092dd3fe42819d6f215c717dd10d9349626d92a0d0b3ecf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec mtl ];
  benchmarkHaskellDepends = [
    base
    criterion
    foldl
    mtl
    random
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nh2/loop";
  description = "Fast loops (for when GHC can't optimize forM_)";
  license = lib.licenses.mit;
  broken = false;
}
