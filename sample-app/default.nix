let
  config = {
    packageOverrides = pkgs: rec {
      haskellPackages = pkgs.haskell.packages.ghcjs.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          app =
            haskellPackagesNew.callPackage ./app.nix { };

          natural-transformation =
            haskellPackagesNew.callPackage ./natural-transformation.nix { };

          miso =
            haskellPackagesNew.callPackage ./miso.nix { };

        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };

in
  { app = pkgs.haskellPackages.app;
  }

