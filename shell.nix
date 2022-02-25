with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    (python3.withPackages (python-packages: (with python-packages; [
      numpy
      scipy
      pyqtgraph
      pyqt5
      pyaudio
      portaudio
    ])))
    qt5Full
  ];
}
