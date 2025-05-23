return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'andrew-george/telescope-themes'
	},

	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ft', '<cmd>Telescope themes<cr>', {})
	end,
}
