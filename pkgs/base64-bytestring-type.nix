{ mkDerivation
, aeson
, base
, base-compat
, base64-bytestring
, binary
, bytestring
, cereal
, deepseq
, hashable
, http-api-data
, lib
, QuickCheck
, serialise
, tasty
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "base64-bytestring-type";
  version = "1.0.1";
  sha256 = "f607d07c4aab227b4536c495fa7c07b35ddc9c2c013d385c16c02f236526780e";
  revision = "14";
  editedCabalFile = "0pfj807231v2jn5067yhn13f6qq3d77fqnglmzh5wp445ikd5q0s";
  libraryHaskellDepends = [
    aeson
    base
    base-compat
    base64-bytestring
    binary
    bytestring
    cereal
    deepseq
    hashable
    http-api-data
    QuickCheck
    serialise
    text
  ];
  testHaskellDepends = [
    aeson
    base
    binary
    bytestring
    cereal
    http-api-data
    serialise
    tasty
    tasty-quickcheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/base64-bytestring-type#readme";
  description = "A newtype around ByteString, for base64 encoding";
  license = lib.licenses.bsd3;
}
