if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "yaml",
      "python",
      "json",
      "go",
      "gomod",
      "gosum",
      "helm",
      "bash",
      "dockerfile",
      "gitignore",
      "jq",
      "markdown",
      "sql",
      "terraform",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
