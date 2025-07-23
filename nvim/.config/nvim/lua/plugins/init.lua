-- Central file for lazy.nvim and plugin imports

-- This table will contain all your plugin specifications
local plugins = {
	-- Simple plugins can be listed directly here as strings
	-- "NMAC427/guess-indent.nvim", -- Detect tabstop and shiftwidth automatically
	"nvim-lua/plenary.nvim", -- Dependency for many plugins
	{
		"NMAC427/guess-indent.nvim",
		opts = {
			filetype_exclude = {},
		},
	},

	-- Import plugins from individual files
	require("plugins.gitsigns"),
	require("plugins.whichkey"),
	require("plugins.telescope"),
	require("plugins.lsp"), -- LSP setup (lspconfig, mason, etc.)
	require("plugins.conform"),
	require("plugins.cmp"), -- Completion (blink.cmp, luasnip, lazydev)
	require("plugins.colorscheme"), -- Your tokyonight setup
	require("plugins.lualine"),
	require("plugins.todo_comments"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.render_markdown"),
	require("plugins.twilight"),
	require("plugins.lazygit"),
	require("plugins.colorizer"),
	require("plugins.yazi"),
	-- Add more plugin requires here as you add new plugin files
}

-- Setup lazy.nvim with your plugin list and global options
require("lazy").setup(plugins, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
