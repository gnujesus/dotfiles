-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-c>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- TABS

vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bn', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bc', '<Cmd>BufferWipeout<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>ve', '<Cmd>Ex<CR>', { noremap = true, silent = true, desc = '[V]im [E]xplore' })

-- SPLIT

vim.keymap.set('n', '<leader>vs', '<Cmd>vsplit<CR>', { noremap = true, silent = true, desc = '[V]im [S]plit' })
vim.keymap.set('n', '<leader>vh', '<Cmd>split<CR>', { noremap = true, silent = true, desc = '[V]im [H]orizontal Split' })
vim.keymap.set('n', '<leader>vc', '<Cmd>close<CR>', { noremap = true, silent = true, desc = '[V]im [C]lose Split' })

-- MOVEMENT

vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc = 'Move up and center' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc = 'Move down and center' })

-- PASTE AND REPLACE

vim.keymap.set('n', '<leader>p', '"_dP')
vim.keymap.set('v', '<leader>p', '"_dP')

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
