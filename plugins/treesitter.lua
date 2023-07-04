return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
		  "cpp",
		  "dart",
		  "python",
      "markdown",
      "markdown_inline",
		  "fish",
		  "fsh",
		  "sql",
		  "bash",
    })
  end,
}
