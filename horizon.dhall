let H =
      https://gitlab.horizon-haskell.net/dhall/horizon-spec/-/raw/0.10.0/horizon-spec/package.dhall

let callCHaP
    : H.Name → H.Version → H.HaskellPackage.Type
    = λ(name : H.Name) →
      λ(version : H.Version) →
        H.callTarball
          "https://chap.intersectmbo.org/package/${name}-${version}.tar.gz"
          (None H.Subdir)

let packages =
      toMap
        { HTF = H.callHackage "HTF" "0.15.0.1"
        , PyF = H.callHackage "PyF" "0.11.2.1"
        , Stream = H.callHackage "Stream" "0.4.7.2"
        , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
        , base-deriving-via = callCHaP "base-deriving-via" "0.1.0.2"
        , base-prelude = H.callHackage "base-prelude" "1.6.1.1"
        , composition-prelude = H.callHackage "composition-prelude" "3.0.0.2"
        , canonical-json = H.callHackage "canonical-json" "0.6.0.1"
        , cardano-binary = callCHaP "cardano-binary" "1.7.1.0"
        , cardano-binary-test = callCHaP "cardano-binary-test" "1.4.0.2"
        , cardano-crypto = callCHaP "cardano-crypto" "1.1.2"
        , cardano-crypto-class = callCHaP "cardano-crypto-class" "2.1.4.0"
        , cardano-crypto-praos = callCHaP "cardano-crypto-praos" "2.1.2.0"
        , cardano-crypto-tests = callCHaP "cardano-crypto-tests" "2.1.2.0"
        , cardano-slotting = callCHaP "cardano-slotting" "0.1.2.0"
        , cardano-strict-containers =
            callCHaP "cardano-strict-containers" "0.1.2.1"
        , cardano-prelude = callCHaP "cardano-prelude" "0.1.0.4"
        , cardano-prelude-test = callCHaP "cardano-prelude-test" "0.1.0.2"
        , checkers = H.callHackage "checkers" "0.6.0"
        , deriving-aeson = H.callHackage "deriving-aeson" "0.2.9"
        , dependent-sum-template =
            callCHaP "dependent-sum-template" "0.1.1.1.0.0.0.1"
        , dictionary-sharing = H.callHackage "dictionary-sharing" "0.1.0.0"
        , dom-lt = H.callHackage "dom-lt" "0.2.3"
        , flat = H.callHackage "flat" "0.6"
        , heapwords = callCHaP "heapwords" "0.1.0.2"
        , hedgehog-fn = H.callHackage "hedgehog-fn" "1.0"
        , hex-text = H.callHackage "hex-text" "0.1.0.9"
        , int-cast = H.callHackage "int-cast" "0.2.0.0"
        , lazysmallcheck = H.callHackage "lazysmallcheck" "0.6"
        , lazy-search = H.callHackage "lazy-search" "0.1.3.0"
        , list-t = H.callHackage "list-t" "1.0.5.7"
        , mtl-prelude = H.callHackage "mtl-prelude" "2.0.3.2"
        , multiset = H.callHackage "multiset" "0.3.4.3"
        , nonempty-vector = H.callHackage "nonempty-vector" "0.2.3"
        , ral = H.callHackage "ral" "0.2.1"
        , size-based = H.callHackage "size-based" "0.1.3.2"
        , testing-type-modifiers =
            H.callHackage "testing-type-modifiers" "0.1.0.1"
        , timeit = H.callHackage "timeit" "2.0"
        , plutus-core = callCHaP "plutus-core" "1.19.0.0"
        , plutus-ledger-api = callCHaP "plutus-ledger-api" "1.19.0.0"
        , plutus-tx = callCHaP "plutus-tx" "1.19.0.0"
        , plutus-tx-plugin = callCHaP "plutus-tx-plugin" "1.19.0.0"
        , prettyprinter-configurable =
            callCHaP "prettyprinter-configurable" "1.19.0.0"
        , protolude = H.callHackage "protolude" "0.3.3"
        , quickcheck-text = H.callHackage "quickcheck-text" "0.1.2.1"
        , quickcheck-transformer =
            H.callHackage "quickcheck-transformer" "0.3.1.2"
        , word-array = callCHaP "word-array" "1.1.0.0"
        , vty-crossplatform = H.callHackage "vty-crossplatform" "0.4.0.0"
        , vty-unix = H.callHackage "vty-unix" "0.2.0.0"
        , vty = H.callHackage "vty" "6.1"
        , brick = H.callHackage "brick" "2.3.1"
        , nothunks = H.callHackage "nothunks" "0.1.5"
        }

in  H.HorizonExport.MakeOverlay
      { packagesDir = "pkgs"
      , overlayFile = "overlay.nix"
      , overlay = { compiler = "ghc-9.6.3", packages }
      }
