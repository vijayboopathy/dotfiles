return { -- You can easily change to a different colorscheme.
	"catppuccin/nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("catppuccin").setup({
			flavor = "frappe",
		})
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end,
}
