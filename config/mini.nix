{
  vim.mini = {
    ai = {
      enable = true;
      setupOpts = {
        n_lines = 500;
      };
    };

    icons = {
      enable = true;
      setupOpts = {
        filetype = {
          dotenv = {
            glyph = "";
            hl = "MiniIconsYellow";
          };
        };
      };
    };

    pairs = {
      enable = true;
      setupOpts = {
        modes = {
          insert = true;
          command = true;
          terminal = false;
        };

        skip_next = ''[=[[%w%%%'%[%"%.%`%$]]=]'';
        skip_ts = [ "string" ];
        skip_unbalanced = true;
        markdown = true;
      };
    };
  };
}
