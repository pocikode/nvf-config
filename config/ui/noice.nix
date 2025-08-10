{ util, ... }:

{
  config.vim = {
    ui.noice = {
      enable = true;
    };

    keymaps = [
      (util.mkKeymap "n" "<leader>sn" "" "+noice")
      (util.mkLuaKeymap "c" "<S-Enter>" ''function() require("noice").redirect(vim.fn.getcmdline()) end''
        "Redirect Cmdline"
      )
      (util.mkLuaKeymap "n" "<leader>snl" ''function() require("noice").cmd("last") end''
        "Noice Last Message"
      )
      (util.mkLuaKeymap "n" "<leader>snh" ''function() require("noice").cmd("history") end''
        "Noice History"
      )
      (util.mkLuaKeymap "n" "<leader>sna" ''function() require("all").cmd("last") end'' "Noice All")
      (util.mkLuaKeymap "n" "<leader>snd" ''function() require("dismiss").cmd("last") end''
        "Noice Dismiss All"
      )
      (util.mkLuaKeymap "n" "<leader>snt" ''function() require("pick").cmd("last") end''
        "Noice Picker (Telescope/FzfLua)"
      )
    ];
  };
}
