{ pkgs, util, ... }:

with util;
{
  vim.telescope = {
    enable = true;
    extensions = [
      {
        name = "fzf";
        packages = [ pkgs.vimPlugins.telescope-fzf-native-nvim ];
        setup = {
          fzf = {
            fuzzy = true;
          };
        };
      }
      {
        name = "file-browser";
        packages = [ pkgs.vimPlugins.telescope-file-browser-nvim ];
        setup = { };
      }
    ];

    mappings = { };
  };

  vim.keymaps = [
    (mkKeymap "n" "<leader>," "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>"
      "Switch Buffer"
    )
    (mkKeymap "n" "<leader>/" "<cmd>Telescope live_grep<cr>" "Grep (Root Dir)")
    (mkKeymap "n" "<leader>:" "<cmd>Telescope command_history<cr>" "Command History")
    (mkKeymap "n" "<leader><space>" "<cmd>Telescope find_files<cr>" "Find Files (Root Dir)")

    # find
    (mkKeymap "n" "<leader>fb"
      "<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>"
      "Buffers"
    )
    (mkKeymap "n" "<leader>ff" "<cmd>Telescope find_files<cr>" "Find Files (Root Dir)")
    (mkKeymap "n" "<leader>fg" "<cmd>Telescope git_files<cr>" "Find Files (git-files)")
    (mkKeymap "n" "<leader>fr" "<cmd>Telescope oldfiles<cr>" "Recent")

    # git
    (mkKeymap "n" "<leader>gc" "<cmd>Telescope git_commits<CR>" "Commits")
    (mkKeymap "n" "<leader>gs" "<cmd>Telescope git_status<CR>" "Status")

    # search
    (mkKeymap "n" "<leader>s\"" "<cmd>Telescope registers<cr>" "Registers")
    (mkKeymap "n" "<leader>sa" "<cmd>Telescope autocommands<cr>" "Auto Commands")
    (mkKeymap "n" "<leader>sb" "<cmd>Telescope current_buffer_fuzzy_find<cr>" "Buffer")
    (mkKeymap "n" "<leader>sc" "<cmd>Telescope command_history<cr>" "Command History")
    (mkKeymap "n" "<leader>sC" "<cmd>Telescope commands<cr>" "Commands")
    (mkKeymap "n" "<leader>sd" "<cmd>Telescope diagnostics bufnr=0<cr>" "Document Diagnostics")
    (mkKeymap "n" "<leader>sD" "<cmd>Telescope diagnostics<cr>" "Workspace Diagnostics")
    (mkKeymap "n" "<leader>sg" "<cmd>Telescope live_grep<cr>" "Grep (Root Dir)")
    (mkKeymap "n" "<leader>sh" "<cmd>Telescope help_tags<cr>" "Help Pages")
    (mkKeymap "n" "<leader>sH" "<cmd>Telescope highlights<cr>" "Search Highlight Groups")
    (mkKeymap "n" "<leader>sj" "<cmd>Telescope jumplist<cr>" "Jumplist")
    (mkKeymap "n" "<leader>sk" "<cmd>Telescope keymaps<cr>" "Key Maps")
    (mkKeymap "n" "<leader>sl" "<cmd>Telescope loclist<cr>" "Location List")
    (mkKeymap "n" "<leader>sM" "<cmd>Telescope man_pages<cr>" "Man Pages")
    (mkKeymap "n" "<leader>sm" "<cmd>Telescope marks<cr>" "Jump to Mark")
    (mkKeymap "n" "<leader>so" "<cmd>Telescope vim_options<cr>" "Options")
    (mkKeymap "n" "<leader>sR" "<cmd>Telescope resume<cr>" "Resume")
    (mkKeymap "n" "<leader>sq" "<cmd>Telescope quickfix<cr>" "Quickfix List")
  ];
}
