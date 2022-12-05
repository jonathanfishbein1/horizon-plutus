{ mkDerivation
, HUnit
, HsOpenSSL
, QuickCheck
, attoparsec
, base
, base16-bytestring
, blaze-builder
, bytestring
, bytestring-builder
, case-insensitive
, clock
, containers
, criterion
, deepseq
, directory
, filepath
, http-common
, http-streams
, io-streams
, io-streams-haproxy
, lib
, lifted-base
, monad-control
, mtl
, network
, old-locale
, openssl-streams
, parallel
, random
, snap-core
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, text
, threads
, time
, transformers
, unix
, unix-compat
, vector
}:
mkDerivation {
  pname = "snap-server";
  version = "1.1.2.0";
  sha256 = "92306f4148fd9eca06a608b9a8d46a95e928aee231ab320650f5d25854da9e70";
  revision = "2";
  editedCabalFile = "0dzsn3y7jnha1jbp0n5igjrg4cb8kggps798rlix60d66iy8r1l2";
  configureFlags = [ "-fopenssl" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    blaze-builder
    bytestring
    bytestring-builder
    case-insensitive
    clock
    containers
    filepath
    HsOpenSSL
    io-streams
    io-streams-haproxy
    lifted-base
    mtl
    network
    old-locale
    openssl-streams
    snap-core
    text
    time
    transformers
    unix
    unix-compat
    vector
  ];
  testHaskellDepends = [
    attoparsec
    base
    base16-bytestring
    blaze-builder
    bytestring
    bytestring-builder
    case-insensitive
    clock
    containers
    deepseq
    directory
    filepath
    HsOpenSSL
    http-common
    http-streams
    HUnit
    io-streams
    io-streams-haproxy
    lifted-base
    monad-control
    mtl
    network
    old-locale
    openssl-streams
    parallel
    QuickCheck
    random
    snap-core
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    text
    threads
    time
    transformers
    unix
    unix-compat
    vector
  ];
  benchmarkHaskellDepends = [
    attoparsec
    base
    blaze-builder
    bytestring
    bytestring-builder
    criterion
    io-streams
    io-streams-haproxy
    snap-core
    transformers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://snapframework.com/";
  description = "A web server for the Snap Framework";
  license = lib.licenses.bsd3;
  broken = false;
}
