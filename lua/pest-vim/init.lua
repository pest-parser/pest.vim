local M = {}

function M.setup(opts)
  -- does not add anything on top of lspconfig currently.
  -- this may change in the future.
  if vim.lsp.config then
    vim.lsp.config("pest_ls", opts)
    vim.lsp.enable("pest_ls")
  else
    -- nvim <0.11
    require("lspconfig").pest_ls.setup(opts)
  end
end

return M
