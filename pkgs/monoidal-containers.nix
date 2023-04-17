{ mkDerivation, aeson, base, containers, deepseq, hashable, lens
, lib, newtype, semialign, these, unordered-containers, witherable
}:
mkDerivation {
  pname = "monoidal-containers";
  version = "0.6.4.0";
  sha256 = "03019ebf5533dbebf70d5c60bdac52eb2409a8d057a78044f0dabe9df5234f27";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers deepseq hashable lens newtype semialign these
    unordered-containers witherable
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/bgamari/monoidal-containers";
  description = "Containers with monoidal accumulation";
  license = lib.licenses.bsd3;
  broken = false;
}