{ mkDerivation, base, fetchgit, file-embed, lib, process
, template-haskell, text
}:
mkDerivation {
  pname = "cardano-git-rev";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "0wkbz2yxwaaxx6w5j2snbp8gg8imjjipw8zka3lcnrp3jx9gx1ha";
    rev = "b7d70f3a54921669519e1de1ec6ed381d01b28fb";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-git-rev/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base file-embed process template-haskell text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Git revisioning";
  license = lib.licenses.asl20;
  broken = false;
}