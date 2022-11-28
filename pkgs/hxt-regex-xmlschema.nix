{ mkDerivation
, HUnit
, base
, bytestring
, criterion
, deepseq
, hxt-charproperties
, lib
, parsec
, text
}:
mkDerivation {
  pname = "hxt-regex-xmlschema";
  version = "9.2.0.7";
  sha256 = "b9b6bcfc7d8c5e9a0be87dc56b13a237a51ca2c19c6665a51378a9538b71d97a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    hxt-charproperties
    parsec
    text
  ];
  testHaskellDepends = [ base bytestring HUnit parsec text ];
  benchmarkHaskellDepends = [
    base
    bytestring
    criterion
    deepseq
    parsec
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema";
  description = "A regular expression library for W3C XML Schema regular expressions";
  license = lib.licenses.mit;
  broken = false;
}
