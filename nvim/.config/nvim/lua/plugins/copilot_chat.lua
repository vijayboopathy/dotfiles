return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			temperature = 0.1,
			window = {
				layout = "float",
				width = 80,
				height = 20,
				border = "rounded",
				title = "Copilot Assistant",
				zindex = 100,
			},
			headers = {
				user = "👤 You",
				assistant = "🤖 Copilot",
				tool = "🔧 Tool",
			},

			separator = "━━",
			auto_fold = true,
			auto_insert_mode = true,
		},
	},
}
