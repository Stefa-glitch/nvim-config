return {
  "tamton-aquib/staline.nvim",
  config = function()
    require("staline").setup({
      sections = {
        left = {
          '▊ ', 'mode', ' ', 'branch', ' ',
          {'file_name', ''}, ' ',
        },
        mid = {'lsp'},
        right = {
          {'line_column', ' '}, ' ',
          {'cool_symbol', ' '}, ' ',
          'file_size', ' ',
        },
      },
      defaults = {
        true_colors = true,
        line_column = "[%l/%L] :%c",
        fg = "#E3E3E3",
        bg = "#202325",
        cool_symbol = "",
        left_separator = "",
        right_separator = "",
      },
      mode_colors = {
        n = "#98c354",
        i = "#34afec",
        c = "#e16c75",
        v = "#fff23f",
      },
    })
  end
}

