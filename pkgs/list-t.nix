{ mkDerivation
, base
, base-prelude
, foldl
, HTF
, lib
, logict
, mmorph
, monad-control
, mtl
, mtl-prelude
, semigroups
, transformers
, transformers-base
}:
mkDerivation {
  pname = "list-t";
  version = "1.0.5.3";
  sha256 = "adf3d36457d4c505bd7c9d5f81760145102d10d66503240fe24c3882947b6e48";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    foldl
    logict
    mmorph
    monad-control
    mtl
    semigroups
    transformers
    transformers-base
  ];
  testHaskellDepends = [ base-prelude HTF mmorph mtl-prelude ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/list-t";
  description = "ListT done right";
  license = lib.licenses.mit;
  broken = false;
}
