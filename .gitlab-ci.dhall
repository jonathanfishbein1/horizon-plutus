let Prelude =
        env:DHALL_PRELUDE
      ? https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
          sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let HsSrc =
      < FromHackage : { name : Text, version : Text }
      | FromGit :
          { url : Text, revision : Optional Text, subdir : Optional Text }
      >

let Modifiers =
      { Type = { doJailbreak : Bool, doCheck : Bool }
      , default = { doJailbreak = True, doCheck = False }
      }

let Attr = λ(a : Type) → { mapKey : Text, mapValue : a }

let HsPkg = {source : HsSrc, modifiers : Modifiers.Type }

let Attr
    : ∀(x : Type) → Type
    = λ(x : Type) → { mapKey : Text, mapValue : x }

let Step = { script : List Text }

let toStep
    : ∀(id : Text) → ∀(prefix : Text) → ∀(x : Text) → Attr Step
    = λ(id : Text) →
      λ(prefix : Text) →
      λ(x : Text) →
        { mapKey = id
        , mapValue.script = [ "nix build -L .#${prefix}.${x}" ]
        }

let input = Prelude.Map.keys Text HsPkg ./manifest.dhall

let packages =
      Prelude.List.map
        (Text)
        (Attr Step)
        ( λ(x : Text) →
            toStep "Package ${x}" "packages.x86_64-linux" x
        )
        (input : List Text)

in  packages
