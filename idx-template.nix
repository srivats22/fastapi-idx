{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''    
    mkdir "$out"
    mkdir -p "$out/.idx/"
    cp -rf ${./dev.nix} "$out/.idx/dev.nix"
    shopt -s dotglob; cp -r ${./dev}/* "$out"
    chmod -R +w "$out"
  '';
}