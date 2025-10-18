return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "python",
          "html",
          "css",
          "json",
          "markdown",
          "markdown_inline",
          "rust",
        },
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
      })
    end,
  },
}
