let Prelude =
        env:DHALL_PRELUDE
      ? https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
          sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let H = ./horizon-spec.dhall

let Step = { script : List Text }

let toStep
    : ∀(id : Text) → ∀(prefix : Text) → ∀(x : Text) → H.Attr Step
    = λ(id : Text) →
      λ(prefix : Text) →
      λ(x : Text) →
        { mapKey = id
        , mapValue.script = [ "nix build -L .#${prefix}.${x}" ]
        }

let input = Prelude.Map.keys Text H.HaskellPackage.Type ./horizon.dhall

let packages =
      Prelude.List.map
        (Text)
        (H.Attr Step)
        ( λ(x : Text) →
            toStep "Package ${x}" "packages.x86_64-linux" x
        )
        (input : List Text)

in  packages
