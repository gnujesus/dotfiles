return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_instaleld = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "go",
        "http",
        "java",
        "scss",
        "sql",
        "typescript",
        "javascript",
        "html",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX (idk wtf is this)
      -- Oh, I just noticed what this is
      vim.filetype.add({
        -- idk why tf does this work, why `extensioon`?
        extensioon = {
          mdx = "mdx",
        },
      })

      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
