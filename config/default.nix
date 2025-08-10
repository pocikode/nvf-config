{
  imports = [
    ./mini.nix

    # languages and completion
    ./languages
    ./cmp/blink-cmp.nix

    # editor
    ./editor/keymaps.nix
    ./editor/neotree.nix
    ./editor/trouble.nix
    ./editor/which-key.nix

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

    notify.nvim-notify.enable = true;

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
      registers = "unnamedplus";
    };

    utility = {
      motion.flash-nvim.enable = true;
    };
  };
}
