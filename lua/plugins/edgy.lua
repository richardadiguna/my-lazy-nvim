return {
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.left = opts.left or {}

      table.insert(opts.left, {
        title = "Explorer",
        ft = "snacks_layout_box",

        -- Only match non-floating Snacks layouts
        filter = function(_, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,

        size = { width = 30 },
        pinned = true,
      })
    end,
  },
}
