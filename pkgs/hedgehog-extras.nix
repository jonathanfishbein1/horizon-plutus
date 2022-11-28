{ mkDerivation
, aeson
, aeson-pretty
, async
, base
, bytestring
, deepseq
, directory
, exceptions
, fetchgit
, filepath
, hedgehog
, hw-aeson
, lib
, mmorph
, mtl
, network
, process
, resourcet
, stm
, temporary
, text
, time
, transformers
, unliftio
, unordered-containers
, yaml
}:
mkDerivation {
  pname = "hedgehog-extras";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/hedgehog-extras";
    sha256 = "14fq596n48jx2yys7pzz2rfdssd6hj28z6wb7dl4pjzpkznbwj3a";
    rev = "26b76bbcecfe48d0a87099f213f58e3778aa1f59";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    async
    base
    bytestring
    deepseq
    directory
    exceptions
    filepath
    hedgehog
    hw-aeson
    mmorph
    mtl
    network
    process
    resourcet
    stm
    temporary
    text
    time
    transformers
    unliftio
    unordered-containers
    yaml
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Supplemental library for hedgehog";
  license = lib.licenses.asl20;
  broken = false;
}
