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
  {
    "tzachar/cmp-tabnine",
    config = true,
    opts = {
      show_prediction_strength = true,
    },
    build = "./install.sh",
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "nvim_lsp" },
        { name = "cmp_tabnine" },
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
      { "tzachar/cmp-tabnine" },
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
}
