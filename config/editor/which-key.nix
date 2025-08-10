{
  vim.binds = {
    cheatsheet.enable = true;

    whichKey = {
      enable = true;
      setupOpts = {
        preset = "helix";
        spec = [
          [
            {
              mode = [
                "n"
                "v"
              ];
            }
            [
              "<leader><tab>"
              "tabs"
            ]
            [
              "<leader>c"
              "code"
            ]
            [
              "<leader>d"
              "debug"
            ]
            [
              "<leader>dp"
              "profiler"
            ]
            [
              "<leader>f"
              "file/find"
            ]
            [
              "<leader>g"
              "git"
            ]
            [
              "<leader>gh"
              "hunks"
            ]
            [
              "<leader>q"
              "quit/session"
            ]
            [
              "<leader>s"
              "search"
            ]
            [
              "<leader>t"
              "terminal"
            ]
            [
              "<leader>u"
              "ui"
            ]
            [
              "<leader>x"
              "diagnostics/quickfix"
            ]
            [
              "["
              "prev"
            ]
            [
              "]"
              "next"
            ]
            [
              "g"
              "goto"
            ]
            [
              "gs"
              "surround"
            ]
            [
              "z"
              "fold"
            ]
          ]
        ];
      };
    };
  };
}
