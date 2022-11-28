{ mkDerivation, array, base, happy, lib, pretty, syb }:
mkDerivation {
  pname = "haskell-src";
  version = "1.0.4";
  sha256 = "8bc77695f9cc113933048409d2ed3bf2a3b947e18312a23b0dbb7838d086f3ea";
  revision = "1";
  editedCabalFile = "0dfjzq0sxxcalqxygp2svx4890qx8b4amad0xldwy1f4xrp3lsnb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base pretty syb ];
  libraryToolDepends = [ happy ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Support for manipulating Haskell source code";
  license = lib.licenses.bsd3;
  broken = false;
}
