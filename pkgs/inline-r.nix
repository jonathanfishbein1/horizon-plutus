{ mkDerivation
, aeson
, base
, bytestring
, containers
, criterion
, data-default-class
, deepseq
, directory
, exceptions
, fetchgit
, filepath
, heredoc
, ieee754
, inline-c
, lib
, mtl
, pretty
, primitive
, process
, quickcheck-assertions
, R
, reflection
, setenv
, silently
, singletons
, singletons-th
, strict
, tasty
, tasty-expected-failure
, tasty-golden
, tasty-hunit
, tasty-quickcheck
, template-haskell
, temporary
, text
, th-lift
, th-orphans
, transformers
, unix
, vector
}:
mkDerivation {
  pname = "inline-r";
  version = "0.10.5";
  src = fetchgit {
    url = "https://github.com/tweag/HaskellR";
    sha256 = "1a72f3bbyfs1cvbag49dav8fmshbkf3qmaimf862fsaabig2c9vw";
    rev = "fe9b5bd06cd4d3988e47b9933b11d83b6108e255";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/inline-r/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    containers
    data-default-class
    deepseq
    exceptions
    heredoc
    inline-c
    mtl
    pretty
    primitive
    process
    reflection
    setenv
    singletons
    singletons-th
    template-haskell
    temporary
    text
    th-lift
    th-orphans
    transformers
    unix
    vector
  ];
  libraryPkgconfigDepends = [ R ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    heredoc
    ieee754
    mtl
    process
    quickcheck-assertions
    silently
    singletons
    strict
    tasty
    tasty-expected-failure
    tasty-golden
    tasty-hunit
    tasty-quickcheck
    template-haskell
    temporary
    text
    unix
    vector
  ];
  benchmarkHaskellDepends = [
    base
    criterion
    filepath
    primitive
    process
    singletons
    template-haskell
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://tweag.github.io/HaskellR";
  description = "Seamlessly call R from Haskell and vice versa. No FFI required.";
  license = lib.licenses.bsd3;
  broken = false;
}
