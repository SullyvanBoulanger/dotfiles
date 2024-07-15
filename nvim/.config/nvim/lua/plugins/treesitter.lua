return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua", 
				"javascript", 
				"angular",
				"css", 
				"html", 
				"dockerfile", 
				"git_config", 
				"gitcommit", 
				"gitignore", 
				"git_rebase", 
				"graphql", 
				"java", 
				"json", 
				"markdown", 
				"python", 
				"rasi", 
				"regex", 
				"sql", 
				"toml", 
				"typescript", 
				"xml",
				"yaml"
			},
			highlight = {enable = true},
			indent = {enable = true},
		})
	end
}
