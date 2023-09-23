{ pkgs ? import <nixpkgs> {} }:

with pkgs; mkShell {
  buildInputs = [
    (haskellPackages.ghcWithPackages (p: with p; [
      cabal-install
      OpenGLRaw
      GLURaw
      GLUT
    ]))
  ];
}
