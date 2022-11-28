{ mkDerivation
, aeson
, base
, containers
, deepseq
, hashable
, lens
, lib
, newtype
, semialign
, these
, unordered-containers
, witherable
}:
mkDerivation {
  pname = "monoidal-containers";
  version = "0.6.3.0";
  sha256 = "047e86f1d31c56c8aee60eaff340b57340b1aa9a29f9ecf64679cb9141f98154";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    deepseq
    hashable
    lens
    newtype
    semialign
    these
    unordered-containers
    witherable
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/bgamari/monoidal-containers";
  description = "Containers with monoidal accumulation";
  license = lib.licenses.bsd3;
  broken = false;
}
