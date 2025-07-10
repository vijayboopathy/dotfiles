return {
	"folke/twilight.nvim",
	event = "BufReadPost",
	config = function()
		require("twilight").setup({
			dimming = {
				top = 10,
				bottom = 10,
			},
			disable_on_search = true,
			disable_on_qf = true,
			disable_on_loclist = true,
			exclude = { "markdown", "TelescopePrompt", "lazy", "mason", "Trouble", "NvimTree" },
			context = "cursor", -- Using 'cursor' as 'auto' was causing issues
		})
	end,
}
