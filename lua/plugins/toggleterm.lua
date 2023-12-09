require("toggleterm").setup({
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	direction = "float",
	close_on_exit = true,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	auto_scroll = true,

	float_opts = {
		border = 'curved'
	},
})

