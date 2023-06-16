{ mkDerivation, QuickCheck, base, boring, dec, deepseq, fin
, hashable, lib, some
}:
mkDerivation {
  pname = "bin";
  version = "0.1.3";
  sha256 = "fb9cf773bd6e36802748c538696187fe66efbc817c52bfe2f6cfdeff75126d92";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base boring dec deepseq fin hashable QuickCheck some
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/vec";
  description = "Bin: binary natural numbers";
  license = lib.licenses.gpl2Plus;
  broken = false;
}