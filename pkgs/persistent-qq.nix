{ mkDerivation
, HUnit
, aeson
, base
, bytestring
, fast-logger
, haskell-src-meta
, hspec
, lib
, monad-logger
, mtl
, persistent
, persistent-sqlite
, resourcet
, template-haskell
, text
, unliftio
}:
mkDerivation {
  pname = "persistent-qq";
  version = "2.12.0.5";
  sha256 = "306079b7c761827a121dabd2c5bac4ee1cd342b8388f737045ce2b4a3fcb6fd6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    haskell-src-meta
    mtl
    persistent
    template-haskell
    text
  ];
  testHaskellDepends = [
    aeson
    base
    bytestring
    fast-logger
    haskell-src-meta
    hspec
    HUnit
    monad-logger
    mtl
    persistent
    persistent-sqlite
    resourcet
    template-haskell
    text
    unliftio
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/persistent#readme";
  description = "Provides a quasi-quoter for raw SQL for persistent";
  license = lib.licenses.mit;
  broken = false;
}
