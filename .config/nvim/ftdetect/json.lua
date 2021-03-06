vim.api.nvim_create_autocmd({
	"BufRead", "BufNewFile", "BufEnter",
}, {
	group = filetypedetect_id,
	pattern = {"*.tfstate", "*.tfstate.backup"},
	callback = function()
		vim.bo.filetype = "json"
	end,
})
