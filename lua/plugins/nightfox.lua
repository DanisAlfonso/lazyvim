return {
  "EdenEast/nightfox.nvim",
  lazy = true, -- lazy load the colorscheme
  priority = 1000, -- ensure it loads early
  config = function()
    -- Setup nightfox with options
    require("nightfox").setup({
      options = {
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [r]nvim
        dim_inactive = false, -- Non focused panes get a darker background
        styles = {
          comments = "italic",
          conditionals = "bold",
          constants = "bold",
          functions = "bold",
          keywords = "bold",
          numbers = "bold",
          operators = "bold",
          strings = "bold",
          types = "bold",
          variables = "bold",
        },
        inverse = {
          match_paren = false, -- Enable/Disable inverse highlighting for match parens
          visual = false, -- Enable/Disable inverse highlighting for visual selection
          search = false, -- Enable/Disable inverse highlighting for search
        },
        modules = {
          -- You can override highlights for various modules
          -- Available modules: 'bufferline', 'dashboard', 'git', 'hop', 'lsp', 'lsp_semantic_tokens', 'mason', 'native_lsp', 'neogit', 'neotree', 'notify', 'octo', 'symbols_outline', 'telescope', 'treesitter', 'which_key'
        },
      },
      palettes = {},
      specs = {},
      groups = {},
    })

    -- You can set a specific nightfox variant if desired, or leave it for manual selection
    -- Available variants: 'nightfox', 'dayfox', 'duskfox', 'nordfox', 'terafox', 'carbonfox'
    -- vim.cmd("colorscheme nightfox")
  end,
}