return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					n = {
						["dd"] = actions.delete_buffer,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fb", builtin.builtin, { desc = "Telescope built in pickers" })
		vim.keymap.set("n", "<leader>fb", builtin.builtin, { desc = "Telescope built in pickers" })
		vim.keymap.set("n", "<leader>fc", function()
			local cwd = "~/.config/nvim"
			builtin.find_files({ cwd = cwd })
		end)
	end,
}
