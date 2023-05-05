{ mkDerivation, QuickCheck, ansi-terminal, base, fetchgit, lib
, prettyprinter, process, text, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative-fork";
  version = "0.16.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/optparse-applicative/";
    sha256 = "1gvsrg925vynwgqwplgjmp53vj953qyh3wbdf34pw21c8r47w35r";
    rev = "7497a29cb998721a9068d5725d49461f2bba0e7a";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal base prettyprinter process text transformers
    transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/pcapriotti/optparse-applicative-fork";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
  broken = false;
}