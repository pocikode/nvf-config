{ util, ... }:

with util;
{
  vim = {
    terminal.toggleterm = {
      enable = true;
      mappings = { };
    };

    keymaps = [
      (mkKeymap "n" "<leader>ft" "<cmd>ToggleTerm<cr>" "Toggle Terminal")
      (mkKeymap "n" "<leader>th" "<cmd>ToggleTerm direction=horizontal<cr>"
        "Toggle Horizontal Terminal Window"
      )
      (mkKeymap "n" "<leader>tv" "<cmd>ToggleTerm direction=vertical<cr>"
        "Toggle Vertical Terminal Window"
      )
      (mkKeymap "n" "<leader>tf" "<cmd>ToggleTerm direction=float<cr>" "Toggle Floating Terminal Window")

      (mkKeymap "t" "<C-/>" "<cmd>close<cr>" "Hide Terminal")
      (mkKeymap "t" "<C-_>" "<cmd>close<cr>" "which_key_ignore")
    ];
  };
}
