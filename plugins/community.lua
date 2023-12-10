return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.completion.tabnine-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },

  { import = "astrocommunity.motion.hop-nvim" },

  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  { import = "astrocommunity.git.neogit" },

  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  { import = "astrocommunity.register.nvim-neoclip-lua" },

  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.code-runner.sniprun" },
}
