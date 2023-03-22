let Prelude =
        env:DHALL_PRELUDE
      ? https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
          sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let H =
      https://gitlab.horizon-haskell.net/dhall/horizon-spec/-/raw/0.10.0/horizon-spec/package.dhall

let toStep
    : Text → Text
    = λ(x : Text) →
        "nix build --accept-flake-config --json .#${x} | jq -r '.[].outputs | to_entries[].value' | cachix push horizon"

let toEchoStep
    : Text → Text
    = λ(x : Text) → "echo \"${toStep x}\""

let input =
      Prelude.Map.keys
        Text
        H.HaskellPackage.Type
        ( merge
            { MakePackageSet =
                λ(x : H.PackageSetExportSettings) → x.packageSet.packages
            , MakeOverlay = λ(x : H.OverlayExportSettings) → x.overlay.packages
            }
            ./horizon.dhall
        )

let packages = Prelude.List.map Text Text toEchoStep (input : List Text)

in      "("
    ++  Prelude.List.fold
          Text
          packages
          Text
          (λ(x : Text) → λ(y : Text) → x ++ ";" ++ y)
          ""
    ++  ") | parallel -j 16"
