{ mkDerivation, HUnit, QuickCheck, Stream, aeson, algebraic-graphs
, array, barbies, base, base64-bytestring, bifunctors, bimap, brick
, bytestring, cardano-crypto, cardano-crypto-class, cassava, cborg
, composition-prelude, containers, criterion, criterion-measurement
, cryptonite, data-default-class, deepseq, dependent-map
, dependent-sum, dependent-sum-template, deriving-aeson
, deriving-compat, directory, dlist, dom-lt, exceptions, extra
, fetchzip, filepath, flat, free, ghc-prim, hashable, haskeline
, hedgehog, hex-text, lazy-search, lens, lib, megaparsec, microlens
, microlens-th, mmorph, mono-traversable, monoidal-containers, mtl
, multiset, nonempty-vector, nothunks, optparse-applicative
, parser-combinators, pretty-show, prettyprinter
, prettyprinter-configurable, primitive, profunctors
, quickcheck-instances, quickcheck-transformer, ral, random
, recursion-schemes, semigroupoids, semigroups, serialise
, size-based, some, split, tagged, tasty, tasty-discover
, tasty-expected-failure, tasty-golden, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, template-haskell, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
, text-zipper, th-compat, th-lift, th-lift-instances, th-utilities
, time, transformers, unordered-containers, vector, vty, witherable
}:
mkDerivation {
  pname = "plutus-core";
  version = "1.15.0.1";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/plutus-core-1.15.0.1.tar.gz";
    sha256 = "1xz25hxnxs34hxps04rfwqyg3h99zbmghg950fyhjk9rycyn2gp9";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson algebraic-graphs array barbies base base64-bytestring
    bifunctors bimap bytestring cardano-crypto cardano-crypto-class
    cassava cborg composition-prelude containers cryptonite
    data-default-class deepseq dependent-map dependent-sum
    dependent-sum-template deriving-aeson deriving-compat dlist dom-lt
    exceptions extra filepath flat free ghc-prim hashable hedgehog
    lazy-search lens megaparsec mmorph mono-traversable
    monoidal-containers mtl multiset nonempty-vector nothunks
    optparse-applicative parser-combinators prettyprinter
    prettyprinter-configurable primitive profunctors QuickCheck
    quickcheck-instances quickcheck-transformer ral recursion-schemes
    semigroupoids semigroups serialise size-based some Stream tagged
    tasty tasty-golden tasty-hedgehog tasty-hunit template-haskell text
    th-compat th-lift th-lift-instances th-utilities time transformers
    unordered-containers witherable
  ];
  executableHaskellDepends = [
    aeson base brick bytestring cardano-crypto-class cassava containers
    criterion criterion-measurement deepseq directory exceptions
    filepath flat haskeline hedgehog lens megaparsec microlens
    microlens-th mono-traversable mtl optparse-applicative
    prettyprinter primitive QuickCheck quickcheck-instances random
    split text text-zipper time transformers vector vty
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-crypto-class cassava containers
    data-default-class dlist filepath flat hashable hedgehog hex-text
    HUnit lens mmorph mtl nonempty-vector pretty-show prettyprinter
    QuickCheck quickcheck-instances serialise split tasty
    tasty-expected-failure tasty-golden tasty-hedgehog tasty-hunit
    tasty-quickcheck template-haskell test-framework
    test-framework-hunit test-framework-quickcheck2 text
    th-lift-instances th-utilities unordered-containers vector
  ];
  testToolDepends = [ tasty-discover ];
  benchmarkHaskellDepends = [
    base criterion nonempty-vector ral random
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Language library for Plutus Core";
  license = lib.licenses.asl20;
  broken = false;
}