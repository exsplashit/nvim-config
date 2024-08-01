return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    cmd = "CopilotChat",
    opts = function()
      local user = vim.env.USER or "User"
      user = user:sub(1, 1):upper() .. user:sub(2)
      return {
        model = "gpt-4",
        auto_insert_mode = true,
        show_help = true,
        question_header = "  " .. user .. " ",
        answer_header = "  Copilot ",
        window = {
          width = 0.4,
        },
        selection = function(source)
          local select = require("CopilotChat.select")
          return select.visual(source) or select.buffer(source)
        end,
      }
    end,
  },
  -- why this not working?
  -- {
  --   "zbirenbaum/copilot.lua",
  --   build = ":Copilot auth",
  --   module = "copilot",
  --   -- cmd = "Copilot",
  --   opts = {
  --     suggestion = {
  --       enabled = false,
  --       keymap = {
  --         accept = "<C-K>",
  --         accept_word = false,
  --         accept_line = "<C-I>"
  --       }
  --     },
  --     panel = {
  --       enabled = false,
  --       auto_refresh = false,
  --       keymap = {
  --         accept = "<CR>",
  --         refresh = "gr",
  --         open = "<leader>bk",
  --       },
  --       layout = {
  --         position = "right",
  --         ratio = 0.4,
  --       }
  --     },
  --     copilot_node_command = "node",
  --     server_opts_overrides = {},
  --   }
  -- },
  {
    "zbirenbaum/copilot.lua",
    build = ":Copilot auth",
    module = "copilot",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = true },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    cmd = "Copilot",
    opts = {},
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      local copilot = require("copilot")
      copilot_cmp.setup(opts)
      copilot.setup(copilot.opts)
      -- attach cmp source whenever copilot attaches
      -- fixes lazy-loading issues with the copilot cmp source
      -- LazyVim.lsp.on_attach(function(client)
      --   copilot_cmp._on_insert_enter({})
      -- end, "copilot")
    end,
  }
}
