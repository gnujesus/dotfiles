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
      background = '#0c0c0c',
      primary = '#8cd867',
      secondary = '#ea526f',
    },
    stles = {
      italic = true,
      bold = false,
      underline = false,
      undercurl = true,
    },
  },
}
