local function update_term_dir()
	local api = require('nvim-tree.api')
	local node = api.tree.get_node_under_cursor()
	local path = node and node.absolute_path or vim.fn.getcwd()
	local dir = vim.fn.isdirectory(path) == 1 and path or vim.fn.fnamemodify(path, ":h")
	vim.cmd("lcd " .. dir)
	end



require("toggleterm").setup{
	open_mapping = [[c-t]],
	direction = 'float',
	on_open = function(term)
		update_term_dir()
	end,
}
