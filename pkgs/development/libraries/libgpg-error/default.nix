{ stdenv, fetchurl, bash, gettext }:

stdenv.mkDerivation (rec {
  name = "libgpg-error-1.16";

  src = fetchurl {
    url = "mirror://gnupg/libgpg-error/${name}.tar.bz2";
    sha256 = "16xv59zcr177gvgj97vg0rm4rixrpb4lz1q9fji3xay47i83gm62";
  };

  # If architecture-dependent MO files aren't available, they're generated
  # during build, so we need gettext for cross-builds.
  crossAttrs.buildInputs = [ gettext ];

  doCheck = true;

  meta = {
    homepage = "https://www.gnupg.org/related_software/libgpg-error/index.html";
    description = "A small library that defines common error values for all GnuPG components";

    longDescription = ''
      Libgpg-error is a small library that defines common error values
      for all GnuPG components.  Among these are GPG, GPGSM, GPGME,
      GPG-Agent, libgcrypt, Libksba, DirMngr, Pinentry, SmartCard
      Daemon and possibly more in the future.
    '';

    license = stdenv.lib.licenses.lgpl2Plus;
    platforms = stdenv.lib.platforms.all;
    maintainers = with stdenv.lib.maintainers; [ fuuzetsu ];
  };
}

//

(stdenv.lib.optionalAttrs stdenv.isSunOS {
  # For some reason, /bin/sh on OpenIndiana leads to this at the end of the
  # `config.status' run:
  #   ./config.status[1401]: shift: (null): bad number
  # (See <http://hydra.nixos.org/build/2931046/nixlog/1/raw>.)
  # Thus, re-run it with Bash.
  postConfigure =
    '' ${bash}/bin/sh config.status
    '';
}))
