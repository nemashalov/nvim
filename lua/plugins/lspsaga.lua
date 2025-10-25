return  {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("lspsaga").setup({
      border_style = "rounded",
      code_action_icon = "💡",
    })
  end,
}
