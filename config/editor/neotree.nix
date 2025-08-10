{
  vim = {
    filetree.neo-tree = {
      enable = true;

      setupOpts = {
        sources = [
          "filesystem"
          "buffers"
          "git_status"
        ];
        open_files_do_not_replace_types = [
          "terminal"
          "Trouble"
          "trouble"
          "qf"
          "edgy"
          "Outline"
        ];
        filesystem = {
          bind_to_cwd = false;
          follow_current_file = {
            enabled = true;
          };
          use_libuv_file_watcher = true;
          filtered_items = {
            hide_dotfiles = false;
            hide_gitignored = true;
            hide_by_name = [
              ".DS_Store"
              "thumbs.db"
              "node_modules"
              ".git"
            ];
          };
        };
      };
    };

    keymaps = [
      {
        key = "<leader>e";
        mode = "n";
        action = "<cmd>Neotree toggle<CR>";
        desc = "Toggle Neotree Explorer";
      }
    ];
  };
}
