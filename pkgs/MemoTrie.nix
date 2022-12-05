{ mkDerivation, base, lib, newtype-generics }:
mkDerivation {
  pname = "MemoTrie";
  version = "0.6.10";
  sha256 = "584df0e138093b2f2edc893a69883eb8cbca3402ebdc75392a7742e86156ba53";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base newtype-generics ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/conal/MemoTrie";
  description = "Trie-based memo functions";
  license = lib.licenses.bsd3;
  broken = false;
}
