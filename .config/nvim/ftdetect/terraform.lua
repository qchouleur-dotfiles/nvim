vim.api.nvim_create_autocmd({
	"BufRead", "BufNewFile", "BufEnter",
}, {
	group = filetypedetect_id,
	pattern = {"*.tf", "*.tfvars"},
	callback = function()
		vim.bo.filetype = "terraform"
	end,
})
