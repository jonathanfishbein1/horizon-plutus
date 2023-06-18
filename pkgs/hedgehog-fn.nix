{ mkDerivation, base, contravariant, hedgehog, lib, transformers }:
mkDerivation {
  pname = "hedgehog-fn";
  version = "1.0";
  sha256 = "170bc58d2e5a5bc15bc3e8a0a3ea71b11b8aab8b3bfd923b7f9394afe569b915";
  revision = "2";
  editedCabalFile = "1x7n1r640mc6b4s6pfk96157y3r2z4mcx4i3lbq1k04cnzivd5n2";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base contravariant hedgehog transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/qfpl/hedgehog-fn";
  description = "Function generation for `hedgehog`";
  license = lib.licenses.bsd3;
  broken = false;
}