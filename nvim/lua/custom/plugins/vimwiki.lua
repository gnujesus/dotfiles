local os_name = vim.loop.os_uname().sysname

local wikiPath

if os_name == 'Linux' then
  wikiPath = '/mnt/c/Users/jotam/Nextcloud/vimwiki'
else
  wikiPath = 'C:/Users/juan.martinezd/Nextcloud/vimwiki'
end

return {
  'vimwiki/vimwiki',
  init = function()
    vim.g.vimwiki_list = { { path = wikiPath, syntax = 'markdown', ext = '.md', autotags = 1 } }
    vim.g.vimwiki_global_ext = 0
    vim.g.vimwiki_table_mappings = 0
    vim.g.vimwiki_filetypes = {}

    -- Override filetype after vimwiki init, since it's setting it to filetype=vimwiki and I need filetype=markdown for rendering
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'vimwiki',

      callback = function()
        local path = vim.api.nvim_buf_get_name(0)
        if path:find(vim.fn.expand(wikiPath)) and path:match '%.md$' then
          vim.bo.filetype = 'markdown'
        end
      end,
    })
  end,
}
