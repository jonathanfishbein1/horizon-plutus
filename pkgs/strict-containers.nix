{ mkDerivation
, array
, base
, base-orphans
, binary
, ChasingBottoms
, containers
, deepseq
, fetchgit
, hashable
, HUnit
, indexed-traversable
, lib
, primitive
, QuickCheck
, random
, strict
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, transformers
, unordered-containers
, vector
, vector-binary-instances
}:
mkDerivation {
  pname = "strict-containers";
  version = "0.1.1";
  src = fetchgit {
    url = "https://github.com/milloni/strict-containers";
    sha256 = "1fpbfp8frvyhvy2qw63512llyswwm690bk890bi1rhqnm2v10q3k";
    rev = "9e833be00bc2c5cdb0b4e743b7a2cde00dd4f616";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/strict-containers/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    binary
    containers
    deepseq
    hashable
    indexed-traversable
    primitive
    strict
    unordered-containers
    vector
    vector-binary-instances
  ];
  testHaskellDepends = [
    array
    base
    base-orphans
    ChasingBottoms
    containers
    deepseq
    hashable
    HUnit
    primitive
    QuickCheck
    random
    tasty
    tasty-hunit
    tasty-quickcheck
    template-haskell
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/strict-containers";
  description = "Strict containers";
  license = lib.licenses.bsd3;
  broken = false;
}
