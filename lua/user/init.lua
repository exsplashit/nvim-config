return {
  colorscheme = "catppuccin-mocha",
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  polish = function()
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = 'solarized',
      -- group = ...,
      callback = function()
        vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
          fg = '#555555',
          ctermfg = 8,
          force = true
        })
      end
    })
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
