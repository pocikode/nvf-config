{ util, ... }:

with util;
{
  vim.keymaps = [
    # window navigation using <ctrl> + hjkl
    (mkKeymap "n" "<C-h>" "<C-w>h" "Go to Left Window")
    (mkKeymap "n" "<C-j>" "<C-w>j" "Go to Lower Window")
    (mkKeymap "n" "<C-k>" "<C-w>k" "Go to Upper Window")
    (mkKeymap "n" "<C-l>" "<C-w>l" "Go to Right Window")

    # window resizing using <ctrl> + hjkl
    (mkKeymap "n" "<C-Up>" "<cmd>resize +2<cr>" "Increase Window Height")
    (mkKeymap "n" "<C-Down>" "<cmd>resize -2<cr>" "Decrease Window Height")
    (mkKeymap "n" "<C-Left>" "<cmd>vertical resize -2<cr>" "Decrease Window Width")
    (mkKeymap "n" "<C-Right>" "<cmd>vertical resize +2<cr>" "Increase Window Width")

    # move line
    (mkKeymap "n" "<A-j>" "<cmd>execute 'move .+' . v:count1<cr>==" "Move Down")
    (mkKeymap "n" "<A-k>" "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==" "Move Up")
    (mkKeymap "i" "<A-j>" "<esc><cmd>m .+1<cr>==gi" "Move Down")
    (mkKeymap "i" "<A-k>" "<esc><cmd>m .-2<cr>==gi" "Move Up")
    (mkKeymap "v" "<A-j>" ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv" "Move Down")
    (mkKeymap "v" "<A-j>" ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv" "Move Up")

    # save file
    (mkKeymap "i" "<C-s>" "<cmd>w<cr><esc>" "Save File")
    (mkKeymap "x" "<C-s>" "<cmd>w<cr><esc>" "Save File")
    (mkKeymap "n" "<C-s>" "<cmd>w<cr><esc>" "Save File")
    (mkKeymap "s" "<C-s>" "<cmd>w<cr><esc>" "Save File")

    # indent
    (mkKeymap "v" "<" "<gv" "Decrease Indent")
    (mkKeymap "v" ">" ">gv" "Increase Indent")

    # windows split
    (mkKeymap "n" "<leader>-" "<C-W>s" "Split Window Below")
    (mkKeymap "n" "<leader>|" "<C-W>v" "Split Window Right")
    (mkKeymap "n" "<leader>wd" "<C-W>c" "Delete Window")

    # git
    (mkLuaKeymap "n" "<leader>gg" "function() Snacks.lazygit() end" "Lazygit")
    (mkLuaKeymap "n" "<leader>gf" "function() Snacks.picker.git_log_file() end"
      "Git Current File History"
    )
    (mkLuaKeymap "n" "<leader>gl" "function() Snacks.picker.git_log() end" "Git Log")
    (mkLuaKeymap "n" "<leader>gb" "function() Snacks.picker.git_log_line() end" "Git Blame Line")
    (mkLuaKeymap "n" "<leader>gB" "function() Snacks.gitbrowse() end" "Git Browse (Open)")
    (mkLuaKeymap "n" "<leader>gY" ''
      function()
        Snacks.gitbrowse({ open = function(url) vim.fn.setreg("+", url) end, notify = false })
      end'' "Git Browse (copy)")

    # tabs
    (mkKeymap "n" "<leader><tab>l" "<cmd>tablast<cr>" "Last Tab")
    (mkKeymap "n" "<leader><tab>o" "<cmd>tabonly<cr>" "Close Other Tabs")
    (mkKeymap "n" "<leader><tab>d" "<cmd>tabfirst<cr>" "First Tab")
    (mkKeymap "n" "<leader><tab><tab>" "<cmd>tabnew<cr>" "New Tab")
    (mkKeymap "n" "<leader><tab>]" "<cmd>tabnext<cr>" "Next Tab")
    (mkKeymap "n" "<leader><tab>d" "<cmd>tabclose<cr>" "Close Tab")
    (mkKeymap "n" "<leader><tab>[" "<cmd>tabprevious<cr>" "Previous Tab")
  ];
}
