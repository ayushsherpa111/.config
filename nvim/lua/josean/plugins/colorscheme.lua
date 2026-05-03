return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    local transparent = false

    require("kanagawa").setup({
      style = "wave",
      dimInactive = true,
      transparent = transparent,
      statementStyle = { bold = true },
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
