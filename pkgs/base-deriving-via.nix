{ mkDerivation, base, fetchzip, lib }:
mkDerivation {
  pname = "base-deriving-via";
  version = "0.1.0.2";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/base-deriving-via-0.1.0.2.tar.gz";
    sha256 = "19xa46sz73382355326x72ha7h2aybibnz3cqzdz4xdiivicvpaj";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A general hook newtype for use with deriving via";
  license = lib.licenses.asl20;
  broken = false;
}