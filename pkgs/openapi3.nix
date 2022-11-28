{ mkDerivation
, Cabal
, Glob
, HUnit
, QuickCheck
, aeson
, aeson-pretty
, base
, base-compat-batteries
, bytestring
, cabal-doctest
, containers
, cookie
, doctest
, generics-sop
, hashable
, hspec
, hspec-discover
, http-media
, insert-ordered-containers
, lens
, lib
, mtl
, network
, optics-core
, optics-th
, quickcheck-instances
, scientific
, template-haskell
, text
, time
, transformers
, unordered-containers
, utf8-string
, uuid-types
, vector
}:
mkDerivation {
  pname = "openapi3";
  version = "3.2.2";
  sha256 = "325d491e305de60510f5267b3eccdc2719d4a8e5784577d7e79aef28368d6134";
  revision = "2";
  editedCabalFile = "1yc3wlc8j84glav3hzx1l4yq33k05bll252a8yl6ld275jjswn8p";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    base
    base-compat-batteries
    bytestring
    containers
    cookie
    generics-sop
    hashable
    http-media
    insert-ordered-containers
    lens
    mtl
    network
    optics-core
    optics-th
    QuickCheck
    scientific
    template-haskell
    text
    time
    transformers
    unordered-containers
    uuid-types
    vector
  ];
  executableHaskellDepends = [ aeson base lens text ];
  testHaskellDepends = [
    aeson
    base
    base-compat-batteries
    bytestring
    containers
    doctest
    Glob
    hashable
    hspec
    HUnit
    insert-ordered-containers
    lens
    mtl
    QuickCheck
    quickcheck-instances
    template-haskell
    text
    time
    unordered-containers
    utf8-string
    vector
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/biocad/openapi3";
  description = "OpenAPI 3.0 data model";
  license = lib.licenses.bsd3;
  broken = false;
}
