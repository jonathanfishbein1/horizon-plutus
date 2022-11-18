{ mkDerivation
, base
, dictionary-sharing
, lib
, template-haskell
, testing-type-modifiers
}:
mkDerivation {
  pname = "size-based";
  version = "0.1.3.1";
  sha256 = "a249a75341d2c54736a3a665fc7af1d2ef3c20942e52966337973d4978445ff4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    dictionary-sharing
    template-haskell
    testing-type-modifiers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Sized functors, for size-based enumerations";
  license = lib.licenses.bsd3;
  broken = false;
}
