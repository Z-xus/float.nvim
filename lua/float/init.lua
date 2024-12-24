-- lua/float/init.lua

local floating = require("float.floating")

local user_opts = {
	keybind = "<leader>tt", -- Default keybinding
}

local function setup(opts)
	opts = opts or {}
	user_opts.keybind = opts.keybind or user_opts.keybind

	vim.keymap.set({ "n", "t" }, user_opts.keybind, floating.toggle_term)
end

vim.api.nvim_create_user_command("FloatTerminal", floating.toggle_term, {})

return {
	setup = setup,
}
