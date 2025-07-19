return {
	"folke/twilight.nvim",
	event = "BufReadPost",
	config = function()
		require("twilight").setup({
			dimming = {
				alpha = 0.25, -- amount of dimming
			},
			context = 10,
			treesitter = true,
			expand = {
				"function",
				"method",
				"table",
				"if_statement",
			},
			exclude = { "markdown", "TelescopePrompt", "lazy", "mason", "Trouble", "NvimTree" },
		})
	end,
}
