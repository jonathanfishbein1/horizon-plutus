{ mkDerivation
, base
, containers
, exceptions
, lib
, monad-control
, mtl
, pipes
, primitive
, transformers
, transformers-base
}:
mkDerivation {
  pname = "pipes-safe";
  version = "2.3.4";
  sha256 = "5d848967dfd4910293c2a4a35b79bccfe6772e946856a853b15914ca5bc040c1";
  revision = "1";
  editedCabalFile = "0qhlam3m0zrhl8l5pilxhhgigq56n7wp6cak9hpca3b68bh9wph4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    exceptions
    monad-control
    mtl
    pipes
    primitive
    transformers
    transformers-base
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Safety for the pipes ecosystem";
  license = lib.licenses.bsd3;
  broken = false;
}
