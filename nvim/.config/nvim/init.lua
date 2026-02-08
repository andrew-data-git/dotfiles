--+++++++++++++++++++++++++++++--
-- Andrew's nVIM Configuration --
--+++++++++++++++++++++++++++++--

require("vim-opts") -- from /lua/

-- LAZY VIM CONFIGURATION
-- set up lazy for package management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", --latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins") -- from /lua/plugins/

-- KEYMAPS
local keymap = vim.keymap.set

-- telescope
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
keymap("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
keymap("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
keymap("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

-- nvim tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = true })
keymap("n", "<leader>o", "<cmd>NvimTreeFocus<CR>",  { desc = "Focus NvimTree" })
keymap("n", "<leader>r", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })


