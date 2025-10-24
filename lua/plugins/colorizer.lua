return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    -- Setup with all files and custom options
    require('colorizer').setup({
      '*', -- Highlight all files
      css = { 
        rgb_fn = true,  -- Enable parsing rgb(...) functions in css
        hsl_fn = true,  -- Enable parsing hsl(...) functions
        css = true,     -- Enable all CSS features
        css_fn = true,  -- Enable all CSS *functions*
      },
      html = { 
        names = true,   -- Enable parsing "names" like Blue or Gray
        rgb_fn = true,
      },
      javascript = {
        rgb_fn = true,
      },
    }, {
      RGB      = true,  -- #RGB hex codes
      RRGGBB   = true,  -- #RRGGBB hex codes
      names    = true,  -- "Name" codes like Blue
      RRGGBBAA = true,  -- #RRGGBBAA hex codes
      rgb_fn   = true,  -- CSS rgb() and rgba() functions
      hsl_fn   = true,  -- CSS hsl() and hsla() functions
      css      = true,  -- Enable all CSS features
      css_fn   = true,  -- Enable all CSS *functions*
      mode     = 'background', -- Set the display mode (foreground/background)
    })
  end
}
