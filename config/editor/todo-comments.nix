{ util, ... }:

with util;
{
  vim = {
    notes.todo-comments = {
      enable = true;
    };

    keymaps = [
      (mkLuaKeymap "n" "]t" ''function() require("todo-comments").jump_next() end'' "Next Todo Comment")
      (mkLuaKeymap "n" "[t" ''function() require("todo-comments").jump_prev() end''
        "Previous Todo Comment"
      )
      (mkKeymap "n" "<leader>xt" "<cmd>Trouble todo toggle<cr>" "Todo (Trouble)")
      (mkKeymap "n" "<leader>xT" "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>"
        "Todo/Fix/Fixme (Trouble)"
      )
      (mkKeymap "n" "<leader>st" "<cmd>TodoTelescope<cr>" "Todo")
      (mkKeymap "n" "<leader>sT" "TodoTelescope keywords=TODO,FIX,FIXME<cr>" "Todo/Fix/Fixme")
    ];
  };
}
