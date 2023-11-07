return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "tzachar/cmp-tabnine",
  --   config = true,
  --   opts = {
  --     show_prediction_strength = true,
  --   },
  --   build = "./install.sh",
  -- },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "nvim_lsp" },
        -- { name = "cmp_tabnine" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
      },
      formatting = {
        format = require("lspkind").cmp_format {
          mode = "symbol",
          before = function(_, vim_item)
            vim_item.menu = " [" .. vim_item.kind .. "] "
            return vim_item
          end,
        },
      },
    },
    dependencies = {
      -- { "tzachar/cmp-tabnine" },
      { "onsails/lspkind.nvim" },
    },
  },
  {
    "weilbith/nvim-code-action-menu",
    cmd = { "CodeActionMenu" },
  },
  {
    "kosayoda/nvim-lightbulb",
    event = { "User AstroFile" },
    opts = {
      autocmd = { enabled = true },
      status_text = { enabled = true },
    },
    dependencies = { "antoinemadec/FixCursorHold.nvim" },
  },
  {
    "mg979/vim-visual-multi",
    config = true,
    keys = { "<C-n>" },
  },
  {
    "Exafunction/codeium.vim",
    event = "User AstroFile",
    config = function()
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })

      -- enable/disable codeium
      vim.keymap.set("n", "<leader>;", function()
        if vim.g.codeium_enabled == true then
          vim.cmd "CodeiumDisable"
        else
          vim.cmd "CodeiumEnable"
        end
      end, { noremap = true, desc = "Toggle Codeium active" })
    end,
  },
  {
    "folke/todo-comments.nvim",
    config = true,
    event = "User AstroFile",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoQuickFix", "TodoLocList" },
  },
  {
    "akinsho/flutter-tools.nvim",
    opts = {
      statusline = {
        app_version = true,
        device = true,
        project_config = true,
      },
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
      fvm = true,
      lsp = {
        color = {
          enabled = true,
        },
      },
    },
  },
  {
    "Nash0x7E2/awesome-flutter-snippets",
    ft = "dart",
    config = function() require("luasnip.loaders.from_vscode").lazy_load { include = { "dart" } } end,
  },
  {
    "segeljakt/vim-silicon",
    config = true,
    cmd = { "Silicon" },
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = true,
    -- config = function()
    --   require("chatgpt").setup()
    -- end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
