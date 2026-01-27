return {
  "uga-rosa/translate.nvim",
  cmd = "Translate",
  keys = {
    { "<leader>te", "<Cmd>Translate EN<CR>", mode = { "n", "v" }, desc = "Translate to English" },
    { "<leader>tc", "<Cmd>Translate ZH<CR>", mode = { "n", "v" }, desc = "Translate to Chinese" },
    { "<leader>tr", "<Cmd>Translate EN -output=replace<CR>", mode = { "n", "v" }, desc = "Translate to English (replace)" },
  },
  opts = {
    default = {
      command = "google",
      output = "floating",
    },
    preset = {
      output = {
        floating = {
          border = "rounded",
        },
      },
    },
  },
}
