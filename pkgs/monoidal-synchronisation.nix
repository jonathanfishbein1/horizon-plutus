{ mkDerivation
, QuickCheck
, base
, fetchgit
, io-classes
, io-sim
, lib
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "monoidal-synchronisation";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "06sis1hwh9d7g65qivvb55ab8yli8af0vgc66acp08dj0v4gb2im";
    rev = "c175e75dd8bb3b0e4ea9db9360a64ed159e78013";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/monoidal-synchronisation/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base
    io-classes
    io-sim
    QuickCheck
    tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
  broken = false;
}
