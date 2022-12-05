{ mkDerivation
, base
, base64-bytestring
, blaze-builder
, bytestring
, case-insensitive
, directory
, lib
, mtl
, network
, random
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "http-common";
  version = "0.8.3.4";
  sha256 = "484412bbe111279e24207d25aeae4cbfb28127a9fc3d704c2e0a3bc094b3ebf6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base64-bytestring
    blaze-builder
    bytestring
    case-insensitive
    directory
    mtl
    network
    random
    text
    transformers
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/aesiniath/http-common";
  description = "Common types for HTTP clients and servers";
  license = lib.licenses.bsd3;
  broken = false;
}
