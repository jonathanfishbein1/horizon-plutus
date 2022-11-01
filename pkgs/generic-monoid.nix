{ mkDerivation, base, lib }:
mkDerivation {
  pname = "generic-monoid";
  version = "0.1.0.1";
  sha256 = "cfd072ad70af41c1b94ac24e42e2635f37ed2a54e8f4be871be78b18b66b2adf";
  revision = "2";
  editedCabalFile = "0p3hk9c6qn5kbgi3a4my3rq5cc43wcl93hx6axgzi5wkvimpv653";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Derive monoid instances for product types";
  license = lib.licenses.bsd3;
  broken = false;
}
