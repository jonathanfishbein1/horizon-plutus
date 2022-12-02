{ mkDerivation
, HUnit
, QuickCheck
, aeson
, base
, blaze-html
, bytestring
, conduit
, containers
, exceptions
, hspec
, hspec-expectations
, http-api-data
, lib
, monad-control
, monad-logger
, mtl
, path-pieces
, persistent
, quickcheck-instances
, random
, resourcet
, text
, time
, transformers
, transformers-base
, unliftio
, unliftio-core
, unordered-containers
}:
mkDerivation {
  pname = "persistent-test";
  version = "2.13.1.3";
  sha256 = "b465189ea0935ce35ad58065205f750da9403c98a8cd3920e9ce5e4c2d001b63";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    blaze-html
    bytestring
    conduit
    containers
    exceptions
    hspec
    hspec-expectations
    http-api-data
    HUnit
    monad-control
    monad-logger
    mtl
    path-pieces
    persistent
    QuickCheck
    quickcheck-instances
    random
    resourcet
    text
    time
    transformers
    transformers-base
    unliftio
    unliftio-core
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.yesodweb.com/book/persistent";
  description = "Tests for Persistent";
  license = lib.licenses.mit;
  broken = false;
}
