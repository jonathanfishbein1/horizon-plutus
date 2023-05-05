{ mkDerivation, HTTP, aeson, base, bifunctors, bytestring
, containers, lib, scientific, text, unordered-containers
}:
mkDerivation {
  pname = "hs-rqlite";
  version = "0.1.2.0";
  sha256 = "6d250a34514f5f97729ecded0e7b43fde978ba5d80cef625204303cfdc5ddaf5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bifunctors bytestring containers HTTP scientific text
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A Haskell client for RQlite";
  license = lib.licenses.bsd3;
  broken = false;
}