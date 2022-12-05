{ mkDerivation
, HUnit
, QuickCheck
, attoparsec
, base
, bytestring
, deepseq
, directory
, filepath
, lib
, mtl
, network
, primitive
, process
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, text
, time
, transformers
, vector
, zlib
, zlib-bindings
}:
mkDerivation {
  pname = "io-streams";
  version = "1.5.2.2";
  sha256 = "d365d5051696c15414ebe23749fc67475a532234b7c7d77060323d149a8fc4fe";
  configureFlags = [ "-fnointeractivetests" ];
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    bytestring
    network
    primitive
    process
    text
    time
    transformers
    vector
    zlib-bindings
  ];
  testHaskellDepends = [
    attoparsec
    base
    bytestring
    deepseq
    directory
    filepath
    HUnit
    mtl
    network
    primitive
    process
    QuickCheck
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    text
    time
    transformers
    vector
    zlib
    zlib-bindings
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple, composable, and easy-to-use stream I/O";
  license = lib.licenses.bsd3;
  broken = false;
}
