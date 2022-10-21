{ mkDerivation, base, lib }:
mkDerivation {
  pname = "generic-monoid";
  version = "0.1.0.1";
  sha256 = "cfd072ad70af41c1b94ac24e42e2635f37ed2a54e8f4be871be78b18b66b2adf";
  revision = "1";
  editedCabalFile = "17dfarnbv6si8rgajb3jqsbc4k1nxmvga2h1lhmpnq43n2fdkqkq";
  libraryHaskellDepends = [ base ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Derive monoid instances for product types";
  license = lib.licenses.bsd3;
}