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
    -- replacec buffer close with <leader>x
    ["<leader>x"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" },
    -- Setup ChatGPT
    ["<leader>c"] = { name = "ChatGPT" },
    ["<leader>cc"] = { "<cmd>ChatGPT<cr>", desc = "Chat" },
    ["<leader>cg"] = { "<cmd>ChatGPTCompleteCode<cr>", desc = "Complete Code" },
    ["<leader>ca"] = { "<cmd>ChatGPTActAs<cr>", desc = "Act as" },
    ["<leader>ce"] = { "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Instructions Edit" },
    -- ChatGPT Run
    ["<leader>cr"] = { name = "Run" },
    ["<leader>crt"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
    ["<leader>cra"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
    ["<leader>crg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
    ["<leader>crk"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
    ["<leader>crd"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
    ["<leader>cro"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
    ["<leader>crs"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
    ["<leader>crf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
    ["<leader>crx"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
    ["<leader>crr"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
    ["<leader>crl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
    ["<leader>crc"] = { "<cmd>ChatGPTRun complete_code<CR>", desc = "Complete Code" },
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
    ["<leader>c"] = { name = "ChatGPT" },
    ["<leader>cc"] = { "<cmd>ChatGPT<cr>", desc = "Chat" },
    ["<leader>cg"] = { "<cmd>ChatGPTCompleteCode<cr>", desc = "Complete Code" },
    ["<leader>ca"] = { "<cmd>ChatGPTActAs<cr>", desc = "Act as" },
    ["<leader>ce"] = { "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Instructions Edit" },
    -- ChatGPT Run
    ["<leader>cr"] = { name = "Run" },
    ["<leader>crt"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
    ["<leader>cra"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
    ["<leader>crg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
    ["<leader>crk"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
    ["<leader>crd"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
    ["<leader>cro"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
    ["<leader>crs"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
    ["<leader>crf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
    ["<leader>crx"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
    ["<leader>crr"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
    ["<leader>crl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
    ["<leader>crc"] = { "<cmd>ChatGPTRun complete_code<CR>", desc = "Complete Code" },
  },
}
