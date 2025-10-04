-- lua/keymaps.lua
local map = vim.keymap.set

-- Normal mode mappings
map('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
map('n', '<leader>x', ':wqa<CR>', { desc = 'Save & Quit' })
map('n', '<leader>e', ':Ex<CR>', { desc = 'Save & Quit' })
map('n', '<leader>l', ':Lazy<CR>', { desc = 'Save & Quit' })
map('n', '<C-u>', '<C-u>zz', { desc = "Half page up and center" })
map('n', '<C-d>', '<C-d>zz', { desc = "Half page down and center" })
map('n', 'n', 'nzzzv', { desc = "Next search result and center" })
map('n', 'N', 'Nzzzv', { desc = "Previous search result and center" })
-- Visual mode mappings
map('v', '<leader>c', '"+y', { desc = 'Copy to system clipboard' })

-- Insert mode mappings
map('i', 'jk', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'JK', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'jK', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'Jk', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'kj', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'KJ', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'Kj', '<ESC>', { desc = 'Exit insert mode' })
map('i', 'kJ', '<ESC>', { desc = 'Exit insert mode' })


-- LSP keybindings
map('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
map('n', 'K', vim.lsp.buf.hover, { desc = 'Hover documentation' })
map('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
map('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature help' })
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
map('n', 'gr', vim.lsp.buf.references, { desc = 'Go to references' })

-- Telescope
map('n', '<leader>f', '<cmd>Telescope find_files<cr>', { desc = "Find File"})
map('n', '<leader>g', '<cmd>Telescope live_grep<cr>', { desc = "Grep Search"})
map('n', '<leader>h', '<cmd>Telescope help_tags<cr>', { desc = "Find Help"})
map('n', '<leader>b', function()
    require('telescope.builtin').buffers({
        sort_lastused = true,
        ignore_current_buffer = true,
        path_display = { "tail" },
        sort_mru = true,
        layout_config = {
            width = 0.7,
            height = 0.5,
        }
    })
end, { desc = "Find buffers" })
map('n', '<leader>>', ':NvimTreeResize +10<CR>', { desc = "Increase tree width" })
map('n', '<leader><', ':NvimTreeResize -10<CR>', { desc = "Decrease tree width" })
map('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show diagnostics" })

-- Tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<C-h>', '<C-w>h', { desc = "Move to left window" })
map('n', '<C-l>', '<C-w>l', { desc = "Move to right window" })
map('n', '<leader>o', ':NvimTreeFindFile!<CR>', { desc = "Locate current file in tree" })

