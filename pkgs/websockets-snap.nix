{ mkDerivation, base, bytestring, bytestring-builder, io-streams
, lib, mtl, snap-core, snap-server, websockets
}:
mkDerivation {
  pname = "websockets-snap";
  version = "0.10.3.1";
  sha256 = "13afb464748b796fdb9222c07e3009d1ebeeda34e599d6b77b0bf66016fefac2";
  revision = "1";
  editedCabalFile = "08rz1l4f84gcp2a2rsihk6zl3jm2x4igr13fwv2y8m5agsvd2lhy";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring bytestring-builder io-streams mtl snap-core
    snap-server websockets
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Snap integration for the websockets library";
  license = lib.licenses.bsd3;
  broken = false;
}