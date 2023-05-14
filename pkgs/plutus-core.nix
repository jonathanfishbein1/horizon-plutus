{ mkDerivation, HUnit, QuickCheck, Stream, aeson, algebraic-graphs
, array, barbies, base, base64-bytestring, bifunctors, bimap
, bytestring, cardano-crypto, cardano-crypto-class, cassava, cborg
, composition-prelude, containers, criterion, criterion-measurement
, cryptonite, data-default-class, deepseq, dependent-map
, dependent-sum-template, deriving-aeson, deriving-compat
, directory, dlist, dom-lt, exceptions, extra, fetchgit, filepath
, flat, ghc-prim, hashable, hedgehog, hex-text, int-cast
, lazy-search, lens, lib, megaparsec, mmorph, monoidal-containers
, mtl, multiset, nonempty-vector, nothunks, optparse-applicative
, parser-combinators, pretty-show, prettyprinter
, prettyprinter-configurable, primitive, quickcheck-instances
, quickcheck-transformer, ral, random, recursion-schemes
, semigroupoids, semigroups, serialise, size-based, some, split
, tagged, tasty, tasty-golden, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, template-haskell, test-framework
, test-framework-hunit, test-framework-quickcheck2, text, th-compat
, th-lift, th-lift-instances, th-utilities, time, transformers
, unordered-containers, vector, witherable, word-array
}:
mkDerivation {
  pname = "plutus-core";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "1xf2jn46rk57mq8kskp2g4ijsi69mi5awsv2jm4qnzvxvgv897da";
    rev = "5efe047b034bdd1f79df6dfa64a3c5d205ffa8f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson algebraic-graphs array barbies base base64-bytestring
    bifunctors bimap bytestring cardano-crypto cardano-crypto-class
    cassava cborg composition-prelude containers cryptonite
    data-default-class deepseq dependent-map dependent-sum-template
    deriving-aeson deriving-compat dlist dom-lt exceptions extra
    filepath flat ghc-prim hashable hedgehog int-cast lazy-search lens
    megaparsec mmorph monoidal-containers mtl multiset nonempty-vector
    nothunks parser-combinators prettyprinter
    prettyprinter-configurable primitive QuickCheck
    quickcheck-transformer ral recursion-schemes semigroupoids
    semigroups serialise size-based some Stream tagged tasty
    tasty-golden tasty-hedgehog tasty-hunit template-haskell text
    th-compat th-lift th-lift-instances th-utilities time transformers
    unordered-containers witherable word-array
  ];
  executableHaskellDepends = [
    aeson base bytestring cardano-crypto-class cassava containers
    criterion criterion-measurement deepseq directory filepath flat
    hedgehog lens megaparsec monoidal-containers mtl
    optparse-applicative prettyprinter QuickCheck quickcheck-instances
    random split text time transformers vector
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-crypto-class cassava containers
    data-default-class filepath flat hedgehog hex-text HUnit lens
    megaparsec mmorph mtl nonempty-vector pretty-show prettyprinter
    QuickCheck quickcheck-instances serialise split tasty tasty-golden
    tasty-hedgehog tasty-hunit tasty-quickcheck template-haskell
    test-framework test-framework-hunit test-framework-quickcheck2 text
    th-lift-instances th-utilities vector
  ];
  benchmarkHaskellDepends = [
    base criterion nonempty-vector ral random
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Language library for Plutus Core";
  license = lib.licenses.asl20;
  broken = false;
}