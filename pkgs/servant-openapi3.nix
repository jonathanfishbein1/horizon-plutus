{ mkDerivation
, Cabal
, QuickCheck
, aeson
, aeson-pretty
, base
, base-compat
, bytestring
, cabal-doctest
, directory
, doctest
, filepath
, hspec
, hspec-discover
, http-media
, insert-ordered-containers
, lens
, lens-aeson
, lib
, openapi3
, servant
, singleton-bool
, template-haskell
, text
, time
, unordered-containers
, utf8-string
, vector
}:
mkDerivation {
  pname = "servant-openapi3";
  version = "2.0.1.5";
  sha256 = "5e39a8b5504dddeb8f56f07623366c7fab9df646202033c898be2d48d4c39e7d";
  revision = "1";
  editedCabalFile = "0bscnxbw1zd0f7ycjr54kxfdcxzndgbxpamc75r1yzly262xrc1b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    base
    base-compat
    bytestring
    hspec
    http-media
    insert-ordered-containers
    lens
    openapi3
    QuickCheck
    servant
    singleton-bool
    text
    unordered-containers
  ];
  testHaskellDepends = [
    aeson
    base
    base-compat
    directory
    doctest
    filepath
    hspec
    lens
    lens-aeson
    openapi3
    QuickCheck
    servant
    template-haskell
    text
    time
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
  homepage = "https://github.com/biocad/servant-openapi3";
  description = "Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API.";
  license = lib.licenses.bsd3;
  broken = false;
}
