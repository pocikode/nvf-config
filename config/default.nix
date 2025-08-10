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
    ./ui/noice.nix
  ];

  _module.args.util = import ./util.nix;

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
    syntaxHighlighting = true;
    lineNumberMode = "relNumber";
    preventJunkFiles = true;

    options = {
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      exrc = true;
      secure = true;
    };

    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };

    binds = {
      cheatsheet.enable = true;
      whichKey.enable = true;
    };
  };
}
