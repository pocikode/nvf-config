{
  vim.autocomplete.blink-cmp = {
    enable = true;
    setupOpts = {
      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
          "copilot"
        ];
        providers = {
          copilot = {
            name = "copilot";
            module = "blink-cmp-copilot";
            kind = "Copilot";
            score_offset = 100;
            async = true;
          };
        };
      };
    };
  };
}
