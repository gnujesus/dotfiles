return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {}
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
  init = function()
    vim.keymap.set('n', '<leader>ld', ':Lspsaga show_line_diagnostics<CR>')
  end,
}
