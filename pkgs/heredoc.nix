{ mkDerivation, base, lib, template-haskell }:
mkDerivation {
  pname = "heredoc";
  version = "0.2.0.0";
  sha256 = "c90d9fc61cb8cd812be510845493b6a6eddcc4b772581fd40a9433ed8f130f40";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base template-haskell ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://hackage.haskell.org/package/heredoc";
  description = "multi-line string / here document using QuasiQuotes";
  license = lib.licenses.publicDomain;
  broken = false;
}
