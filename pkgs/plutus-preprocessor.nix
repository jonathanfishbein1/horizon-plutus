{ mkDerivation, base, cardano-ledger-alonzo, fetchgit, lib }:
mkDerivation {
  pname = "plutus-preprocessor";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/plutus-preprocessor/; echo source root reset to $sourceRoot";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = false;
  executableHaskellDepends = [ base cardano-ledger-alonzo ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A preproceesor for creating plutus scripts as bytestrings and equivalents";
  license = lib.licenses.asl20;
  mainProgram = "plutus-debug";
  broken = false;
}
