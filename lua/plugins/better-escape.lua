return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter", -- Load when entering insert mode
    opts = {
      mapping = {"jk", "jj"}, -- mappings to trigger escape
      timeout = 200,          -- timeout in ms
      clear_empty_lines = false, -- clear line after escaping if there is only whitespace
      keys = "<Esc>",        -- keys used for escaping
    },
    config = function(_, opts)
      require("better_escape").setup(opts)
    end,
  },
} 