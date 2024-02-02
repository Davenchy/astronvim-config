return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
    opt = {},
  },
  {
    "Exafunction/codeium.vim",
    event = "User AstroFile",
    -- event = "BufEnter",
    config = function()
      -- disable default mappings
      vim.g.codeium_disable_bindings = 1
      -- set codeium keymaps
      vim.keymap.set(
        "i",
        "<M-g>",
        function() return vim.fn["codeium#Accept"]() end,
        { expr = true, desc = "Codeium Accept" }
      )
      vim.keymap.set(
        "i",
        "<M-c>",
        function() return vim.fn["codeium#Complete"]() end,
        { expr = true, desc = "Codeium Complete" }
      )
      vim.keymap.set(
        "i",
        "<M-x>",
        function() return vim.fn["codeium#Clear"]() end,
        { expr = true, desc = "Codeium Clear" }
      )
      vim.keymap.set(
        "i",
        "<M-[>",
        function() return vim.fn["codeium#CycleCompletions"](1) end,
        { expr = true, desc = "Codeium Cycle Completions next" }
      )
      vim.keymap.set(
        "i",
        "<M-]>",
        function() return vim.fn["codeium#CycleCompletions"](-1) end,
        { expr = true, desc = "Codeium Cycle Completions prev" }
      )

      -- enable/disable codeium
      vim.keymap.set("n", "<leader>u;", function()
        if vim.g.codeium_enabled == true then
          vim.cmd "CodeiumDisable"
        else
          vim.cmd "CodeiumEnable"
        end
      end, { noremap = true, desc = "Toggle Codeium active" })
    end,
  },
  -- {
  --   "akinsho/flutter-tools.nvim",
  --   opts = {
  --     statusline = {
  --       app_version = true,
  --       device = true,
  --       project_config = true,
  --     },
  --     debugger = {
  --       enabled = true,
  --       run_via_dap = true,
  --     },
  --     fvm = true,
  --     lsp = {
  --       color = {
  --         enabled = true,
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "Nash0x7E2/awesome-flutter-snippets",
  --   ft = "dart",
  --   config = function() require("luasnip.loaders.from_vscode").lazy_load { include = { "dart" } } end,
  -- },
  {
    "segeljakt/vim-silicon",
    config = true,
    cmd = { "Silicon" },
  },
}
