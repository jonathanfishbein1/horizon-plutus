{ mkDerivation, aeson, base, base16-bytestring, bytestring
, canonical-json, cborg, containers, fetchzip, formatting, ghc-heap
, ghc-prim, integer-gmp, lib, microlens, mtl, protolude, tagged
, text, time
}:
mkDerivation {
  pname = "cardano-prelude";
  version = "0.1.0.2";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-prelude-0.1.0.2.tar.gz";
    sha256 = "09ac7avkxyi60cb9knpzgbsxh0ik9k5xyw6yi2qk27in5yywg4xy";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring canonical-json cborg
    containers formatting ghc-heap ghc-prim integer-gmp microlens mtl
    protolude tagged text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A Prelude replacement for the Cardano project";
  license = lib.licenses.asl20;
  broken = false;
}