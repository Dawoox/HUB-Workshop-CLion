{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = with pkgs; [
      gcc
      gnumake
      valgrind
      criterion
      gdb
      gcovr
      csfml
    ];
}
