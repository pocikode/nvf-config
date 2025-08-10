{
  imports = [
    ./mini.nix

    # editor
    ./editor/neotree.nix

    # ui
    ./ui/bufferline.nix
    ./ui/dashboard.nix
    ./ui/lualine.nix
  ];

  config.vim = {
    binds = {
      cheatsheet.enable = true;
      whichKey.enable = true;
    };
  };
}
