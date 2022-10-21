{ mkDerivation, aeson, aeson-pretty, algebraic-graphs, array
, barbies, base, base64-bytestring, bifunctors, bimap, bytestring
, cardano-crypto, cardano-crypto-class, cassava, cborg
, composition-prelude, containers, criterion, criterion-measurement
, cryptonite, data-default-class, deepseq, dependent-map
, dependent-sum-template, deriving-aeson, deriving-compat
, directory, dlist, dom-lt, exceptions, extra, fetchgit, filepath
, flat, ghc-prim, hashable, hedgehog, hex-text, HUnit, inline-r
, int-cast, integer-gmp, lazy-search, lens, lib, megaparsec, mmorph
, monoidal-containers, mtl, multiset, nonempty-vector, nothunks
, optparse-applicative, parser-combinators, pretty-show
, prettyprinter, prettyprinter-configurable, primitive, QuickCheck
, quickcheck-instances, ral, random, recursion-schemes
, semigroupoids, semigroups, serialise, size-based, some, split
, Stream, tagged, tasty, tasty-golden, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, template-haskell, test-framework
, test-framework-hunit, test-framework-quickcheck2, text, th-compat
, th-lift, th-lift-instances, th-utilities, time, transformers
, unordered-containers, vector, witherable, word-array
}:
mkDerivation {
  pname = "plutus-core";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/plutus";
    sha256 = "0pzzqqbp6jvrzxp7gyi4dnnc5pg0jnr76dsaq6pzn3zgr46pgbd3";
    rev = "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson algebraic-graphs array barbies base base64-bytestring
    bifunctors bimap bytestring cardano-crypto cardano-crypto-class
    cassava cborg composition-prelude containers cryptonite
    data-default-class deepseq dependent-map dependent-sum-template
    deriving-aeson deriving-compat dlist dom-lt exceptions extra
    filepath flat ghc-prim hashable hedgehog int-cast integer-gmp
    lazy-search lens megaparsec mmorph monoidal-containers mtl multiset
    nonempty-vector nothunks parser-combinators prettyprinter
    prettyprinter-configurable primitive ral recursion-schemes
    semigroupoids semigroups serialise size-based some Stream tagged
    tasty tasty-golden tasty-hedgehog tasty-hunit template-haskell text
    th-compat th-lift th-lift-instances th-utilities time transformers
    unordered-containers vector witherable word-array
  ];
  executableHaskellDepends = [
    aeson aeson-pretty barbies base bytestring cardano-crypto-class
    cassava containers criterion criterion-measurement deepseq
    directory exceptions extra filepath flat hedgehog inline-r
    integer-gmp lens megaparsec monoidal-containers mtl
    optparse-applicative prettyprinter QuickCheck quickcheck-instances
    random split text time transformers vector
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-crypto-class cassava containers
    data-default-class extra filepath flat hedgehog hex-text HUnit lens
    megaparsec mmorph mtl nonempty-vector pretty-show prettyprinter
    QuickCheck quickcheck-instances serialise split tasty tasty-golden
    tasty-hedgehog tasty-hunit tasty-quickcheck template-haskell
    test-framework test-framework-hunit test-framework-quickcheck2 text
    th-lift-instances th-utilities transformers vector
  ];
  benchmarkHaskellDepends = [
    barbies base bytestring cassava criterion exceptions extra hedgehog
    inline-r mmorph nonempty-vector ral random template-haskell text
    vector
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Language library for Plutus Core";
  license = lib.licenses.asl20;
}