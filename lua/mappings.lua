require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")



-- Define a Lua function to open a new tab and start the CLI app
local function open_cli_app()
    vim.cmd("vsplit")                     -- create new tab
    vim.cmd("enew")
    vim.fn.termopen("crush")      -- start CLI app in terminal buff
    vim.cmd("startinsert")  
end

-- Map <leader>ai to this function in normal mode
map("n", "<leader>ai", open_cli_app, { noremap = true, silent = true })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
