local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
	"nvim-neo-tree/neo-tree.nvim",
   	branch = "v3.x",
        dependencies = {
      	    "nvim-lua/plenary.nvim",
      	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	    "MunifTanjim/nui.nvim",
	    "s1n7ax/nvim-window-picker",
    	}
    },
    {'nvim-treesitter/nvim-treesitter'},
    {'neovim/nvim-lspconfig'},
    {'ellisonleao/gruvbox.nvim'},
})
