{ mkDerivation
, array
, async
, base
, bytestring
, containers
, deepseq
, ghc-prim
, hashable
, lib
, mtl
, mtl-compat
, stm
, text
, transformers
, transformers-compat
}:
mkDerivation {
  pname = "protolude";
  version = "0.3.2";
  sha256 = "7ec019f3d445563a54fad8ba89564bffaae6028798a1cc3f033f5b425ef7a344";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    async
    base
    bytestring
    containers
    deepseq
    ghc-prim
    hashable
    mtl
    mtl-compat
    stm
    text
    transformers
    transformers-compat
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sdiehl/protolude";
  description = "A small prelude";
  license = lib.licenses.mit;
  broken = false;
}
