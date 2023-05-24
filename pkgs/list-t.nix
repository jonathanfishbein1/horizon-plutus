{ mkDerivation, HTF, base, base-prelude, foldl, lib, logict, mmorph
, monad-control, mtl, mtl-prelude, transformers, transformers-base
}:
mkDerivation {
  pname = "list-t";
  version = "1.0.5.6";
  sha256 = "4f13658a166fc5b07ef57145ef266e3fb2426ed3c96bff89e556e12de7608bc6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base foldl logict mmorph monad-control mtl transformers
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