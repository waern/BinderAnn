{ mkDerivation, base, containers, ghc, ghc-prim, mtl, split
, stdenv, syb, transformers
}:
mkDerivation {
  pname = "BinderAnn";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base containers ghc ghc-prim mtl split syb transformers
  ];
  #libraryToolDepends = [ hpack ];
  testHaskellDepends = [
    base containers ghc ghc-prim mtl split syb transformers
  ];
  #prePatch = "hpack";
  homepage = "https://github.com/OctopiChalmers/BinderAnn#readme";
  license = stdenv.lib.licenses.bsd3;
}
