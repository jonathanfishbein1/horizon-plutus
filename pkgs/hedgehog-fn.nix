{ mkDerivation, base, contravariant, hedgehog, lib, transformers }:
mkDerivation {
  pname = "hedgehog-fn";
  version = "1.0";
  sha256 = "170bc58d2e5a5bc15bc3e8a0a3ea71b11b8aab8b3bfd923b7f9394afe569b915";
  revision = "3";
  editedCabalFile = "1nz3ndndvb0xpnlrkx02l02a62jmrx01jcgxd36k843aacjklyax";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base contravariant hedgehog transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/qfpl/hedgehog-fn";
  description = "Function generation for `hedgehog`";
  license = lib.licenses.bsd3;
  broken = false;
}