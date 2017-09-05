{ mkDerivation, base, containers, quickcheck-instances, semigroups
, stdenv, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "natural-transformation";
  version = "0.4";
  sha256 = "1by8xwjc23l6pa9l4iv7zp82dykpll3vc3hgxk0pgva724n8xhma";
  revision = "1";
  editedCabalFile = "1scwm1gs07znkj4ahfyxpwrksj4rdl1pa81xflcqhkqfgcndvgl3";
  libraryHaskellDepends = [ base semigroups ];
  testHaskellDepends = [
    base containers quickcheck-instances tasty tasty-quickcheck
  ];
  homepage = "https://github.com/ku-fpg/natural-transformation";
  description = "A natural transformation package";
  license = stdenv.lib.licenses.bsd3;
}
