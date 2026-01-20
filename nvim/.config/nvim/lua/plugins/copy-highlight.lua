return {
	"machakann/vim-highlightedyank",
	event = "VeryLazy",
	config = function()
  vim.cmd("highlight YankedText guibg=#ffaa00 guifg=NONE")
		vim.g.highlightedyank_highlight_duration = 100
	end,
}
