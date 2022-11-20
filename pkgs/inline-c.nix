{ mkDerivation
, QuickCheck
, ansi-wl-pprint
, base
, bytestring
, containers
, hashable
, hspec
, lib
, mtl
, parsec
, parsers
, raw-strings-qq
, regex-posix
, split
, template-haskell
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "inline-c";
  version = "0.9.1.6";
  sha256 = "d567b818011b2331d428dd731db024f2662d11f748e015ad33d08aeb48225f19";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-wl-pprint
    base
    bytestring
    containers
    hashable
    mtl
    parsec
    parsers
    template-haskell
    transformers
    unordered-containers
    vector
  ];
  testHaskellDepends = [
    ansi-wl-pprint
    base
    containers
    hashable
    hspec
    parsers
    QuickCheck
    raw-strings-qq
    regex-posix
    split
    template-haskell
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Write Haskell source files including C code inline. No FFI required.";
  license = lib.licenses.mit;
  broken = false;
}
