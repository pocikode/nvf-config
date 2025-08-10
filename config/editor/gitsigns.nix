{ util, ... }:

with util;
{
  vim = {
    git.gitsigns = {
      enable = true;
      mappings = {
        blameLine = "<leader>ghb";
        diffProject = "<leader>ghD";
        diffThis = "<leader>ghd";
        nextHunk = "]h";
        previousHunk = "[h";
        previewHunk = "<leader>ghp";
        resetBuffer = "<leader>ghR";
        resetHunk = "<leader>ghr";
        stageBuffer = "<leader>ghS";
        stageHunk = "<leader>ghs";
        toggleBlame = "<leader>ghB";
        toggleDeleted = "<leader>ghh";
        undoStageHunk = "<leader>ghu";
      };
      setupOpts = {
        signs = {
          add = {
            text = "▎";
          };
          change = {
            text = "▎";
          };
          delete = {
            text = "";
          };
          topdelete = {
            text = "";
          };
          changedelete = {
            text = "▎";
          };
          untracked = {
            text = "▎";
          };
        };
        signs_staged = {
          add = {
            text = "▎";
          };
          change = {
            text = "▎";
          };
          delete = {
            text = "";
          };
          topdelete = {
            text = "";
          };
          changedelete = {
            text = "▎";
          };
        };
      };
    };
  };
}
