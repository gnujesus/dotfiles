{
  "nvimtools/hydra.nvim",
  config = function()
    local Hydra = require('hydra')

    local hint = [[
 ^^^^^^^^     Resize
 ^^^^^^^^^^──────────────
 ^ ^ _k_ ^ ^   Increase height
 _h_ ^ ^ _l_   Resize width
 ^ ^ _j_ ^ ^   Decrease height
     _<Esc>_ to exit
]]

    Hydra({
      name = 'Resize Splits',
      hint = hint,
      config = {
        color = 'pink',
        invoke_on_body = true,
        hint = {
          border = 'rounded'
        }
      },
      mode = 'n',
      body = '<leader>r',
      heads = {

        { 'h', function() vim.cmd('vertical resize -5') end, { desc = '←' } },
        { 'l', function() vim.cmd('vertical resize +5') end, { desc = '→' } },
        { 'j', function() vim.cmd('resize -2') end, { desc = '↓' } },
        { 'k', function() vim.cmd('resize +2') end, { desc = '↑' } },
        { '<Esc>', nil, { exit = true, desc = 'Exit' } },

        { '<C-c>', nil, { exit = true, nowait = true, desc = 'Exit' } },
      }
    })
  end
}

