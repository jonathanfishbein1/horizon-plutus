{ mkDerivation, HUnit, QuickCheck, Stream, aeson, algebraic-graphs
, array, barbies, base, base64-bytestring, bifunctors, bimap, brick
, bytestring, cardano-crypto, cardano-crypto-class, cassava, cborg
, composition-prelude, containers, criterion, criterion-measurement
, cryptonite, data-default-class, deepseq, dependent-map
, dependent-sum, dependent-sum-template, deriving-aeson
, deriving-compat, directory, dlist, dom-lt, exceptions, extra
, fetchgit, filepath, flat, free, ghc-prim, hashable, haskeline
, hedgehog, hex-text, int-cast, lazy-search, lens, lib, megaparsec
, microlens, microlens-th, mmorph, mono-traversable
, monoidal-containers, mtl, multiset, nonempty-vector, nothunks
, optparse-applicative, parser-combinators, pretty-show
, prettyprinter, prettyprinter-configurable, primitive
, quickcheck-instances, quickcheck-transformer, ral, random
, recursion-schemes, semigroupoids, semigroups, serialise
, size-based, some, split, tagged, tasty, tasty-golden
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, template-haskell
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, text-zipper, th-compat, th-lift, th-lift-instances
, th-utilities, time, transformers, unordered-containers, vector
, vty, witherable
}:
mkDerivation {
  pname = "plutus-core";
  version = "1.5.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "13r06l98ndv9l4ph7mv4pv3djgq8iylp59m8lnm5hyfg59ypayr0";
    rev = "cfccccc8596859bfaa992100b11199301eb6d2bd";
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
    data-default-class deepseq dependent-map dependent-sum
    dependent-sum-template deriving-aeson deriving-compat dlist dom-lt
    exceptions extra filepath flat free ghc-prim hashable hedgehog
    int-cast lazy-search lens megaparsec mmorph mono-traversable
    monoidal-containers mtl multiset nonempty-vector nothunks
    optparse-applicative parser-combinators prettyprinter
    prettyprinter-configurable primitive QuickCheck
    quickcheck-instances quickcheck-transformer ral recursion-schemes
    semigroupoids semigroups serialise size-based some Stream tagged
    tasty tasty-golden tasty-hedgehog tasty-hunit template-haskell text
    th-compat th-lift th-lift-instances th-utilities time transformers
    unordered-containers witherable
  ];
  executableHaskellDepends = [
    aeson base brick bytestring cardano-crypto-class cassava containers
    criterion criterion-measurement deepseq directory filepath
    haskeline hedgehog lens megaparsec microlens microlens-th
    mono-traversable mtl optparse-applicative prettyprinter QuickCheck
    quickcheck-instances random split text text-zipper time
    transformers vector vty
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-crypto-class cassava containers
    data-default-class dlist filepath flat hashable hedgehog hex-text
    HUnit lens mmorph mtl nonempty-vector pretty-show prettyprinter
    QuickCheck quickcheck-instances serialise split tasty tasty-golden
    tasty-hedgehog tasty-hunit tasty-quickcheck template-haskell
    test-framework test-framework-hunit test-framework-quickcheck2 text
    th-lift-instances th-utilities unordered-containers vector
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