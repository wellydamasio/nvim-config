local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- Colorscheme and Theme
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
		vim.cmd("colorscheme rose-pine")
		end
	},
	-- File Finder
	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.8',
      		dependencies = { 'nvim-lua/plenary.nvim' }
   	 },
	 { 
		 'nvim-telescope/telescope-fzf-native.nvim', 
		 build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' 
	 },
	 -- File Tree Navigation
	 {
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		requires = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("nvim-tree").setup {}
		end
	 },
	 -- Bufferline for File Navigation
	 {
		 "akinsho/bufferline.nvim",
		 version = "*",
		 dependencies = "nvim-tree/nvim-web-devicons"
	 },
	 -- Comments Plugin
	 {
		 "terrortylor/nvim-comment",
		 config = function()
			 require("nvim_comment").setup({create_mappings = false})
		end
	 }
})
