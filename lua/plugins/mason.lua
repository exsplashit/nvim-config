-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "ruff",
        "ansiblels",
        "bashls",
        "gopls",
        "pyright",
        "pylsp",
        "terraformls",
        "tflint",
        -- "tslint",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        "alejandra",
        "ansible",
        "ansible_language_server",
        "ansiblelint",
        "autoflake",
        "autopep8",
        "basedpyright",
        "bash",
        "bash_language_server",
        "clangd",
        "clang_format",
        "docker",
        "docker_compose_language_service",
        "docker_language_server",
        "docekrfile_language_server",
        "gh_actions_language_server",
        "go",
        "goimports",
        "gomodifytags",
        "golines",
        "gopls",
        "helm_ls",
        "helm",
        "ipython",
        "jq",
        "jq_lsp",
        "kubernetes",
        "kube_linter",
        "markdown",
        "nginx",
        "nix",
        "prometheus_pint",
        "ruff_format",
        "ruff_lsp",
        "rust",
        "sql",
        "shell",
        "terraform_ls",
        "terraform",
        "tflint",
        "yq",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "go-debug-adapter",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
