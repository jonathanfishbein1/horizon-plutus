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
  revision = "2";
  editedCabalFile = "0g1ib89dwhblc19vc8spcjdc10pg56avs9480i55ab315wjfsna2";
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
