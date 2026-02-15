return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    local transparent = true

    require("kanagawa").setup({
      style = "dragon",
      dimInactive = true,
      transparent = transparent,
      statementStyle = { bold = true },
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
