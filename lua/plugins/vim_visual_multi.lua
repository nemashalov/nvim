return {
  "mg979/vim-visual-multi",
  keys = {
    { "<C-n>", mode = { "n", "x" }, desc = "Visual Multi: Select next occurrence" },
    { "<C-p>", mode = { "n", "x" }, desc = "Visual Multi: Skip current occurrence" },
    { "<C-c>", mode = { "n", "x" }, desc = "Visual Multi: Exit" },
  },
  init = function()
  end,
}
