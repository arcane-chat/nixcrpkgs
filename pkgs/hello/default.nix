{ crossenv }:

crossenv.nixpkgs.stdenv.mkDerivation rec {
  name = "hello-${crossenv.host}";

  inherit (crossenv) host;

  src_file = ./hello.c;

  buildInputs = [ crossenv.gcc crossenv.binutils ];

  builder = ./builder.sh;
}
