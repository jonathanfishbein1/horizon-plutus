{ mkDerivation
, HUnit
, HsOpenSSL
, aeson
, aeson-pretty
, attoparsec
, base
, base64-bytestring
, blaze-builder
, bytestring
, case-insensitive
, directory
, filepath
, ghc-prim
, hspec
, hspec-expectations
, http-common
, io-streams
, lib
, lifted-base
, mtl
, network
, network-uri
, openssl-streams
, random
, snap-core
, snap-server
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "http-streams";
  version = "0.8.9.6";
  sha256 = "bad3c6d94dc44e87d4d7e98467631d2d6f369120bbbb917935fb59e2c3b516c1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    attoparsec
    base
    base64-bytestring
    blaze-builder
    bytestring
    case-insensitive
    directory
    filepath
    HsOpenSSL
    http-common
    io-streams
    mtl
    network
    network-uri
    openssl-streams
    text
    transformers
    unordered-containers
  ];
  testHaskellDepends = [
    aeson
    aeson-pretty
    attoparsec
    base
    base64-bytestring
    blaze-builder
    bytestring
    case-insensitive
    directory
    ghc-prim
    HsOpenSSL
    hspec
    hspec-expectations
    http-common
    HUnit
    io-streams
    lifted-base
    mtl
    network
    network-uri
    openssl-streams
    random
    snap-core
    snap-server
    text
    transformers
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/aesiniath/http-streams/";
  description = "An HTTP client using io-streams";
  license = lib.licenses.bsd3;
  broken = false;
}
