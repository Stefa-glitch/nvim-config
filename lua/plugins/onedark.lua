return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      colorscheme = "onedark_vivid", -- 👈 choose your variant here
      options = {
        transparency = false, -- or true if you like transparent background
      },
      styles = {
        comments = "bold",
        keywords = "italic",
      },
    })
    vim.cmd("colorscheme onedark_vivid")
  end,
}


