{ mkDerivation, base, bytestring, cborg, containers, fetchgit
, hashable, lib, nothunks, ouroboros-network-api, serialise, time
}:
mkDerivation {
  pname = "ouroboros-network-mock";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-mock/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cborg containers hashable nothunks
    ouroboros-network-api serialise time
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ouroboros Network Chain for testing purposes";
  license = lib.licenses.asl20;
  broken = false;
}