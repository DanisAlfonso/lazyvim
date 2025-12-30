return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)
        end,
        header = [[Neovim]],
      },
    },
    image = {
      enable = true,
    },
  },
}
