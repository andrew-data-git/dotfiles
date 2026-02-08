-- OPTS AND CONFIGURATION

local g = vim.g
local opt = vim.opt

-- commands
vim.api.nvim_command("set noshowcmd")
vim.api.nvim_command("set nofoldenable")
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- globals
g.mapleader = " " -- makes the spacebar my leaderkey
g.maplocalleader = " " -- etc.
g.shiftround = true -- round indent
g.splitright = true -- put new windows right of current
g.background = "dark"
g.completion_matching_strategy_list = { "exact", "substring", "fuzzy" }
g.dashboard_default_executive = "telescope"

-- options
opt.mouse = "a" -- enable mouse for all modes

opt.cursorline = true -- highlight the current line
opt.smartindent = true -- automatically indent new lines
opt.wrap = true -- line wrapping
opt.number = true -- enable line numbers
opt.relativenumber = true -- enable relative line numbers

opt.smartcase = true -- don't ignore case with capitals
opt.spell = false -- spellcheck = flase

opt.termguicolors = true -- enable 24-bit RGB colors
opt.splitbelow = true -- put new windows below current
opt.splitkeep = "screen" -- scroll behaviour for split windows
opt.splitright = true -- put new windows right of current

opt.backup = false -- keep backup after overwriting a file
opt.swapfile = false -- f it we ball
opt.undofile = true -- save undo info to a file
opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

opt.expandtab = true -- tabs as spaces
opt.tabstop = 4 -- how long each tab looks
opt.softtabstop = 4 -- how many tab inserts or dels
opt.shiftwidth = 4 -- spaces when >> or <<


