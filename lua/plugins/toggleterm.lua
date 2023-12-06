require("toggleterm").setup({
	open_mapping = [[<leader>t]],
	hide_numbers = true,
	direction = "float",
	float_opts = {
		border = 'curved'
	},
	close_on_exit = true,
	start_in_insert = true,
	insert_mappings = false,
	terminal_mappings = false,
})
