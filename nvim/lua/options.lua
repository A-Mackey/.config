-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Other common options
vim.opt.number = true        -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.wrap = false        -- Don't wrap lines
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.tabstop = 2         -- Number of spaces tabs count for
vim.opt.shiftwidth = 2      -- Size of an indent

vim.o.splitright = true     -- Split right

vim.filetype.add({
  extensions = {
    ts = "typescript",
    tsx = "typescriptreact"
  }
})

vim.diagnostic.config({
    virtual_text = true,      -- Show diagnostic message after the line
    signs = true,             -- Show signs in the sign column
    underline = true,         -- Underline the problem area
    update_in_insert = false, -- Update diagnostics in insert mode
    severity_sort = true,     -- Sort diagnostics by severity
    float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

-- Customize diagnostic signs
vim.fn.sign_define("DiagnosticSignError", { text = "󰅚", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "󰋽", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

