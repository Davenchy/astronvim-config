return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of importing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	{ import = "astrocommunity.pack.dart" },
	{ import = "astrocommunity.completion.tabnine-nvim" },
	{ import = "astrocommunity.completion.codeium-vim" },
	{ import = "astrocommunity.media.vim-wakatime" },
	{ import = "astrocommunity.motion.hop-nvim" },
	{ import = "astrocommunity.utility.transparent-nvim" },
}
