{
  config.vim.tabline.nvimBufferline = {
    enable = true;

    mappings = {
      closeCurrent = "<leader>bd";
      cycleNext = "]b";
      cyclePrevious = "[b";
      moveNext = "]B";
      movePrevious = "[B";
    };

    setupOpts = {
      options = {
        numbers = "none";
      };
    };
  };

  config.vim.keymaps = [
    {
      key = "<leader>bp";
      mode = "n";
      action = "<Cmd>BufferLineTogglePin<CR>";
      desc = "Toggle Pin";
    }
    {
      key = "<leader>bP";
      mode = "n";
      action = "<Cmd>BufferLineGroupClose ungrouped<CR>";
      desc = "Delete Non-Pinned Buffers";
    }
    {
      key = "<leader>br";
      mode = "n";
      action = "<Cmd>BufferLineCloseRight<CR>";
      desc = "Delete Buffers to the Right";
    }
    {
      key = "<leader>bl";
      mode = "n";
      action = "<Cmd>BufferLineCloseLeft<CR>";
      desc = "Delete Buffers to the Left";
    }
    {
      key = "<S-h>";
      mode = "n";
      action = "<cmd>BufferLineCyclePrev<cr>";
      desc = "Prev Buffer";
    }
    {
      key = "<S-l>";
      mode = "n";
      action = "<cmd>BufferLineCycleNext<cr>";
      desc = "Next Buffer";
    }
    {
      key = "[b";
      mode = "n";
      action = "<cmd>BufferLineCyclePrev<cr>";
      desc = "Prev Buffer";
    }
    {
      key = "]b";
      mode = "n";
      action = "<cmd>BufferLineCycleNext<cr>";
      desc = "Next Buffer";
    }
    {
      key = "[B";
      mode = "n";
      action = "<cmd>BufferLineMovePrev<cr>";
      desc = "Move buffer prev";
    }
    {
      key = "]B";
      mode = "n";
      action = "<cmd>BufferLineMoveNext<cr>";
      desc = "Move buffer next";
    }
  ];
}
