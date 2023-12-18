{ mkDerivation, base, constraints-extras, dependent-sum, fetchzip
, lib, template-haskell, th-abstraction, th-extras
}:
mkDerivation {
  pname = "dependent-sum-template";
  version = "0.1.1.1.0.0.0.1";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/dependent-sum-template-0.1.1.1.0.0.0.1.tar.gz";
    sha256 = "14arv0mbs9h8ckdnzbwn3ws64zv4b572wsvgsws85cvh5bqkc7kw";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base dependent-sum template-haskell th-abstraction th-extras
  ];
  testHaskellDepends = [ base constraints-extras dependent-sum ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/obsidiansystems/dependent-sum";
  description = "Template Haskell code to generate instances of classes in dependent-sum package";
  license = lib.licenses.publicDomain;
  broken = false;
}