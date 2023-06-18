{ mkDerivation, base, lib }:
mkDerivation {
  pname = "composition-prelude";
  version = "3.0.0.2";
  sha256 = "050cfc9738a0dc727570aff513c34accf78da0d4941aa695bd26d54126b53194";
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
  description = "Higher-order function combinators";
  license = lib.licenses.bsd3;
  broken = false;
}