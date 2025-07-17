-- Guess indent configuration
require("guess-indent").setup({
	auto_cmd = true,
	override_editorconfig = false, -- Set to true to override .editorconfig settings
	filetype_exclude = {
		"netrw",
		"tutor",
	},
	buftype_exclude = { -- List of buffer types for which autocmd is disabled
		"help",
		"nofile",
		"terminal",
		"prompt",
	},
	on_tab_options = { -- Table of vim options when tabs are detected
		["expandtab"] = false,
	},
	on_space_options = {
		["expandtab"] = true,
		["tabstop"] = "detected", -- If the option is 'detected', the value is set to the automatically detected indent size.
		["softtabstop"] = "detected",
		["shiftwidth"] = "detected",
	},
})
