require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({"n","i"}, "<C-z>", "<cmd> undo <CR>", { desc = "GENERAL Undo" })
map({ "n", "i", "v" }, "ZZ","<cmd> qa <CR>", { desc = "GENERAL Quit nvim" })
map({ "n", "t" }, "<A-i>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm", float_opts={
                  relative = "editor",
                  col = 0.1,
                  row = 0.15,
                  width = 0.8,
                  height = 0.6
              }
            }
end, { desc = "terminal toggle floating term" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
