-- Tokyo Night theme configuration with transparency
require("tokyonight").setup({
  -- your theme comes in 4 styles: storm, moon, night and day
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "qf", "help", "vista_kind", "terminal", "packer" }, -- Set a darker background on sidebar-like windows
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  on_colors = function() end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  on_highlights = function(highlights)
    -- Make background completely transparent
    highlights.Normal = { bg = "none" }
    highlights.NormalFloat = { bg = "none" }
    highlights.NormalNC = { bg = "none" }
    highlights.SignColumn = { bg = "none" }
    highlights.LineNr = { bg = "none" }
    highlights.Folded = { bg = "none" }
    highlights.NonText = { bg = "none" }
    highlights.SpecialKey = { bg = "none" }
    highlights.VertSplit = { bg = "none" }
    highlights.SignColumn = { bg = "none" }
    highlights.EndOfBuffer = { bg = "none" }
  end,
})

-- Load the colorscheme
vim.cmd([[colorscheme tokyonight]]) 
