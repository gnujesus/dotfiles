return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme catppuccin]]
    end,
  },
}

-- return {
--   {
--     'Mofiqul/dracula.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd [[colorscheme dracula]]
--     end,
--   },
-- }
