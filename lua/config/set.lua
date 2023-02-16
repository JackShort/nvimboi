vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.g.term = "xterm-256color"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.autoindent = true

-- vim.opt.smartindent = false
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
--vim.opt.signcolumn = "number"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 100

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

--vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
