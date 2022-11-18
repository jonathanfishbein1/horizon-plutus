{ mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "dictionary-sharing";
  version = "0.1.0.0";
  sha256 = "8c3b5184d5d6056433d51a49c5402e4ab7b0260073d5342685b8e141d2be5a01";
  revision = "3";
  editedCabalFile = "1mn7jcc7h3b8f1pn9zigqp6mc2n0qb66lms5qnrx4zswdv5w9439";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Sharing/memoization of class members";
  license = lib.licenses.bsd3;
  broken = false;
}
