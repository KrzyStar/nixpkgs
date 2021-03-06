# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, HTTP, hxt, hxtHttp, MaybeT, mtl, network, parsec
, transformers
}:

cabal.mkDerivation (self: {
  pname = "HandsomeSoup";
  version = "0.3.2";
  sha256 = "0ixqk32sfv6kj41vc6fzflv6f6jwvnkvcdf9pmgkc675218ggh53";
  buildDepends = [
    HTTP hxt hxtHttp MaybeT mtl network parsec transformers
  ];
  meta = {
    homepage = "https://github.com/egonSchiele/HandsomeSoup";
    description = "Work with HTML more easily in HXT";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    broken = true;
  };
})
