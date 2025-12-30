-- Store the original rose-pine configuration
local rose_pine_config = {
  variant = "main", -- main variant for dark mode
  dark_variant = "main",
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true,
    migrations = true,
  },

  styles = {
    bold = true,
    italic = true,
    transparency = true,
  },

  groups = {
    border = "muted",
    link = "iris",
    panel = "surface",

    error = "love",
    hint = "iris",
    info = "foam",
    note = "pine",
    todo = "rose",
    warn = "gold",

    git_add = "foam",
    git_change = "rose",
    git_delete = "love",
    git_dirty = "rose",
    git_ignore = "muted",
    git_merge = "iris",
    git_rename = "pine",
    git_stage = "iris",
    git_text = "rose",
    git_untracked = "subtle",

    h1 = "iris",
    h2 = "foam",
    h3 = "rose",
    h4 = "gold",
    h5 = "pine",
    h6 = "foam",
  },

  palette = {
    -- Override the builtin palette per variant if needed
  },

  highlight_groups = {
    -- Custom highlight groups if needed
  },

  before_highlight = function(group, highlight, palette)
    -- Custom before_highlight function if needed
  end,
}

return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    set_dark_mode = function()
      vim.o.background = "dark"
      -- Apply rose-pine with dark variant
      require("rose-pine").setup(vim.tbl_extend("force", rose_pine_config, {
        variant = "main", -- Use main variant for dark mode
      }))
      vim.cmd("colorscheme rose-pine")
    end,
    set_light_mode = function()
      vim.o.background = "light"
      -- Apply rose-pine with light variant
      require("rose-pine").setup(vim.tbl_extend("force", rose_pine_config, {
        variant = "dawn", -- Use dawn variant for light mode
      }))
      vim.cmd("colorscheme rose-pine")
    end,
    update_interval = 3000,
    fallback = "dark",
  },
}