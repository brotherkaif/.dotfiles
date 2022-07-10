local telescope = require('telescope')
local themes = require('telescope.themes')

telescope.setup({
		defaults = {
				hidden = true,
				layout_strategy = 'flex',
				color_devicons = false,
		},

		extensions = {
				file_browser = {
						dir_icon = '›',
						grouped = true,
						hidden = true,
				  	sorting_strategy = 'ascending',
						layout_config = {
								prompt_position = 'top',
						},
				},
		},
})

telescope.load_extension('fzf')
telescope.load_extension('file_browser')
