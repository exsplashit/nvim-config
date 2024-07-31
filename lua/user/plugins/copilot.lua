vim.keymap.set('i', '<C-K>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

vim.g.copilot_no_tab_map = false
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')

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

return {
  { "github/copilot.vim", autoStart = false, lazy = false, setup = { suggestion = { enabled = true }, panel = { enabled = true } } }
}
