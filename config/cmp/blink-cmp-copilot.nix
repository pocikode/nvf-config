{ pkgs, ... }:

{
  vim.lazy.plugins = {
    "blink-cmp-copilot" = {
      package = pkgs.vimPlugins.blink-cmp-copilot;
    };
  };

  vim.assistant.copilot = {
    enable = true;
    setupOpts = {
      panel.enabled = false;
      suggestion.enabled = false;
    };
  };
}
