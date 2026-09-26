return {
  "EdenEast/nightfox.nvim",
  -- alwdjawldj
  config = function()
    require("nightfox").setup({
      options = {
        transparent = false,
        terminal_colors = true,
        dim_inactive = true,
        styles = {
          comments = "italic",
          constants = "bold",
          functions = "bold,italic",
          keywords = "bold",
          types = "italic",
        },
      },
      palettes = {
        all = {
          green = "#468432",
          red = "#DB1A1A",
          black = "#091413",
          yellow = "#FFE97D",
          blue = "#3B7597",
          white = "#FFFAF0",
          orange = "#E87F24",
          pink = "#F9B2D7",
        },
      },
      specs = {
        all = {
          syntax = {
            functions = "pink",
            keywords = "cyan",
            types = "orange.bright",
            operators = "blue",
          },
        },
      },
      groups = {
        all = {
          LineNr = { fg = "palette.green" },
        },
      },
    })
    vim.cmd("colorscheme carbonfox")
  end,
}
