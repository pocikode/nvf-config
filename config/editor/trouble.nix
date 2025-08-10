{
  vim = {
    lsp.trouble = {
      enable = true;

      mappings = { };

      setupOpts = {
        modes = {
          lsp = {
            win = {
              position = "right";
            };
          };
        };
      };
    };

    keymaps = [
      {
        key = "<leader>xx";
        mode = "n";
        action = "<cmd>Trouble diagnostics toggle<cr>";
        desc = "Diagnostics (Trouble)";
      }
      {
        key = "<leader>xX";
        mode = "n";
        action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
        desc = "Buffer Diagnostics (Trouble)";
      }
      {
        key = "<leader>cs";
        mode = "n";
        action = "<cmd>Trouble symbols toggle<cr>";
        desc = "Symbols (Trouble)";
      }
      {
        key = "<leader>cS";
        mode = "n";
        action = "<cmd>Trouble lsp toggle<cr>";
        desc = "LSP references/definitions/... (Trouble)";
      }
      {
        key = "<leader>xL";
        mode = "n";
        action = "<cmd>Trouble loclist toggle<cr>";
        desc = "Location List (Trouble)";
      }
      {
        key = "<leader>xQ";
        mode = "n";
        action = "<cmd>Trouble qflist toggle<cr>";
        desc = "Quickfix List (Trouble)";
      }
    ];
  };
}
