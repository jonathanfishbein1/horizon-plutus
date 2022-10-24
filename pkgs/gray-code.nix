{ mkDerivation, base, fetchgit, lib }:
mkDerivation {
  pname = "gray-code";
  version = "0.3.1";
  src = fetchgit {
    url = "https://github.com/milloni/gray-code-0.3.1";
    sha256 = "0mxy8c3ggb8fnpcjcl3c22qljzljly1mgxikpg3l7123h09xrzaf";
    rev = "f310a19e44416206633cfd084f10ffb7cfea9f1d";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [ base ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://bitbucket.org/astanin/hs-gray-code";
  description = "Gray code encoder/decoder";
  license = lib.licenses.bsd3;
}
