return {
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false, -- Load immediately since it's a core functionality
    priority = 1000, -- High priority to load early
    config = function()
      require("supermaven-nvim").setup({
        -- Add any custom configuration options here
      })
    end,
  }
} 