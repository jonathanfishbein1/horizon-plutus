{ mkDerivation, base, bimap, binary, bytestring, containers, extra
, fetchgit, hedgehog, lib, microlens, microlens-mtl, microlens-th
, mmorph, monad-control, moo, random, template-haskell, temporary
, th-utilities, transformers, tree-diff, typerep-map
}:
mkDerivation {
  pname = "goblins";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/newhoggy/goblins";
    sha256 = "0dsfra4qrl5555fq71xlwli6ygkw47biwr1wx73m957vf6knpsn5";
    rev = "a315f41ec7250097fa6073b5ef4773e45758578f";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base bimap binary bytestring containers extra hedgehog microlens
    microlens-mtl microlens-th mmorph monad-control moo random
    template-haskell th-utilities transformers tree-diff typerep-map
  ];
  testHaskellDepends = [ base hedgehog temporary ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/goblins";
  description = "Genetic algorithm based randomised testing";
  license = lib.licenses.bsd3;
}