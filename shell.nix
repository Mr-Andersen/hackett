let
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/294c3605a3a57773242d8585ab1815cd61d4a65f.tar.gz";
  };
  pkgs = import nixpkgs {};
in
  pkgs.mkShell {
    nativeBuildInputs = [
      pkgs.racket
    ];
  }
