{
  vim.treesitter = {
    enable = true;

    textobjects = {
      enable = true;
      setupOpts = {
        move = {
          enable = true;
          goto_next_start = {
            "]f" = "@function.outer";
            "]c" = "@class.outer";
            "]a" = "@parameter.inner";
          };
          goto_next_end = {
            "]F" = "@function.outer";
            "]C" = "@class.outer";
            "]A" = "@parameter.inner";
          };
          goto_previous_start = {
            "[f" = "@function.outer";
            "[c" = "@class.outer";
            "[a" = "@parameter.inner";
          };
          goto_previous_end = {
            "[F" = "@function.outer";
            "[C" = "@class.outer";
            "[A" = "@parameter.inner";
          };

        };
      };
    };
  };
}
