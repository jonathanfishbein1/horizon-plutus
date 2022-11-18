{ mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, directory
, filepath
, hxt-charproperties
, hxt-regex-xmlschema
, hxt-unicode
, lib
, mtl
, network-uri
, parsec
}:
mkDerivation {
  pname = "hxt";
  version = "9.3.1.22";
  sha256 = "ef602fe674225527750574dd555dbdf402ab77d054af75d41ca21b42dbb23ad9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    containers
    deepseq
    directory
    filepath
    hxt-charproperties
    hxt-regex-xmlschema
    hxt-unicode
    mtl
    network-uri
    parsec
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UweSchmidt/hxt";
  description = "A collection of tools for processing XML with Haskell";
  license = lib.licenses.mit;
  broken = false;
}
