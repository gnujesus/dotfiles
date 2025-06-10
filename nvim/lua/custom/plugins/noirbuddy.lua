return {
  'jesseleite/nvim-noirbuddy',
  dependencies = {
    { 'tjdevries/colorbuddy.nvim' },
  },
  lazy = false,
  priority = 1000,
  install = {
    colorscheme = { 'noirbuddy' },
  },
  opts = {
    preset = 'miami-nights',
    colors = {
      background = '#0f0f0f',
      -- primary = '#F7374F',
      secondary = '#BEADFA',
    },
  },
}
