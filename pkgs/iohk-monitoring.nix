{ mkDerivation
, QuickCheck
, Win32-network
, aeson
, array
, async
, async-timer
, attoparsec
, auto-update
, base
, base64-bytestring
, bytestring
, clock
, containers
, contra-tracer
, contravariant
, directory
, ekg
, fetchzip
, filepath
, katip
, lib
, libyaml
, mtl
, network
, process
, random
, safe
, safe-exceptions
, scientific
, semigroups
, split
, stm
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, temporary
, text
, time
, time-units
, tracer-transformers
, transformers
, unix
, unordered-containers
, vector
, void
, yaml
}:
mkDerivation {
  pname = "iohk-monitoring";
  version = "0.1.11.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/iohk-monitoring-0.1.11.1.tar.gz";
    sha256 = "0vxr8c8gxsiz079blwsmkis4dmw0382pc4fzl1791myallm1ng4d";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    array
    async
    async-timer
    attoparsec
    auto-update
    base
    base64-bytestring
    bytestring
    clock
    containers
    contra-tracer
    contravariant
    directory
    ekg
    filepath
    katip
    libyaml
    mtl
    network
    safe
    safe-exceptions
    scientific
    stm
    template-haskell
    text
    time
    time-units
    tracer-transformers
    transformers
    unix
    unordered-containers
    vector
    Win32-network
    yaml
  ];
  testHaskellDepends = [
    aeson
    array
    async
    base
    bytestring
    clock
    containers
    contra-tracer
    directory
    filepath
    libyaml
    mtl
    process
    QuickCheck
    random
    semigroups
    split
    stm
    tasty
    tasty-hunit
    tasty-quickcheck
    temporary
    text
    time
    time-units
    tracer-transformers
    transformers
    unordered-containers
    vector
    void
    yaml
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "logging, benchmarking and monitoring framework";
  license = lib.licenses.asl20;
  broken = false;
}
