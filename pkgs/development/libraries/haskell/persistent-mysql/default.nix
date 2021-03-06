# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, blazeBuilder, conduit, monadControl, monadLogger
, mysql, mysqlSimple, persistent, resourcet, text, transformers
}:

cabal.mkDerivation (self: {
  pname = "persistent-mysql";
  version = "2.1";
  sha256 = "0r4xxv1250ny7x3298mqcv2x5l8vp0ncn9k9js7yi2lj9gcijj6f";
  buildDepends = [
    aeson blazeBuilder conduit monadControl monadLogger mysql
    mysqlSimple persistent resourcet text transformers
  ];
  meta = {
    homepage = "http://www.yesodweb.com/book/persistent";
    description = "Backend for the persistent library using MySQL database server";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
