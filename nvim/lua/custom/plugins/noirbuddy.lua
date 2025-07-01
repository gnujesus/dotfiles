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
    -- colors = {
    --   background = '#131515',
    --   primary = '#adf7b6',
    --   secondary = '#FF56AB',
    -- },
    stles = {
      italic = true,
      bold = false,
      underline = false,
      undercurl = true,
    },
  },
}
