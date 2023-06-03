local M = {}

function M.setup(opts)
    -- does not add anything on top of lspconfig currently.
    -- this may change in the future.
    require("lspconfig").pest_ls.setup(opts)
end

return M
