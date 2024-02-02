-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Open Telescope as a commands palette
    ["<C-p>"] = { "<cmd>Telescope<cr>", desc = "Commands Palette" },
    -- AstroNVim Reload
    ["<leader>pr"] = { "<cmd>AstroReload<cr>", desc = "Reload AstroNvim" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w<cr>", desc = "Save File" }, -- change description but the same command
    [";"] = { ":", desc = "enter command mode" },
    -- Setup ChatGPT
    ["<leader>x"] = { name = "ChatGPT" },
    ["<leader>xc"] = { "<cmd>ChatGPT<cr>", desc = "Chat" },
    ["<leader>xg"] = { "<cmd>ChatGPTCompleteCode<cr>", desc = "Complete Code" },
    ["<leader>xa"] = { "<cmd>ChatGPTActAs<cr>", desc = "Act as" },
  },
  i = {
    ["<C-s>"] = { "<esc>:w<cr>", desc = "Save File - InsertMode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-l>"] = false,
    ["<esc><esc>"] = { "<C-\\><C-n>", desc = "Defocus terminal" },
  },
  v = {
    -- Setup ChatGPT
    ["<leader>x"] = { name = "ChatGPT" },
    ["<leader>xe"] = { "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Edit With Instructions" },
    ["<leader>xt"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
    ["<leader>xa"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
    ["<leader>xg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
    ["<leader>xk"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
    ["<leader>xd"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
    ["<leader>xo"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
    ["<leader>xs"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
    ["<leader>xf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
    ["<leader>xx"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
    ["<leader>xr"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
    ["<leader>xl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
    ["<leader>xc"] = { "<cmd>ChatGPTRun complete_code<CR>", desc = "Complete Code" },
  },
}
