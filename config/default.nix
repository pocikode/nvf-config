{
  imports = [
    ./mini.nix

    # languages and completion
    ./languages
    ./cmp/blink-cmp.nix

    # editor
    ./editor/neotree.nix
    ./editor/trouble.nix

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
