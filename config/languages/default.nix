{
  imports = [
    ./json.nix
  ];

  vim.lsp = {
    enable = true;
    formatOnSave = true;
    inlayHints.enable = true;
    lightbulb.enable = false;
    lspconfig.enable = true;
    nvim-docs-view.enable = true;
    trouble.enable = true;
  };

  vim.languages = {
    bash = {
      enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };

    clang = {
      enable = true;
      cHeader = true;
      dap.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };

    go = {
      enable = true;
      dap.enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };

    nix = {
      enable = true;
      extraDiagnostics.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };

    python = {
      enable = true;
      dap.enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
  };
}
