return { -- Markdown preview
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"stevearc/overseer.nvim",
	},
	config = function()
		require("render-markdown").setup({
			live_preview = true,
			open_new_buffer = true,
			clear_on_delete = true,
			render_images = {
				enable = true,
				-- image_renderer = "iterm",
				image_width = 80,
			},
		})
	end,
	ft = { "markdown", "quarto" },
}
