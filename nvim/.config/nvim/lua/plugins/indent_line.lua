return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = { char = "│" },
			scope = { enabled = true },
			exclude = {
				filetypes = { "help", "dashboard", "NvimTree", "Trouble", "lazy" },
				buftypes = { "terminal", "nofile" },
			},
		})
	end,
}
