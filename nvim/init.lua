require("josean.core")
require("josean.lazy")
require("josean.lsp")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "js", "ts", "tsx", "jsx", "py", "lua" },
  callback = function()
    vim.treesitter.start()
  end,
})
