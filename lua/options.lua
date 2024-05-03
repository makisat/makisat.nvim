vim.g.mapleader = ' '
-- applied in a specified buffer
vim.g.maplocalleader = ' '

-- using nerd font
vim.g.have_nerd_font = false

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- enable mouse
vim.opt.mouse = 'a'

-- hide mode (it's in the status bar)
vim.opt.showmode = false

-- indent on breaken line
vim.opt.breakindent = true

-- ignore case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- extra column on the left for signs
vim.opt.signcolumn = 'yes'

-- do background tasks when stop typing
vim.opt.updatetime = 250

-- timeout between keys
vim.opt.timeoutlen = 300

-- direction to split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- display chars on white spaces
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview susbstitution
vim.opt.inccommand = 'split'

-- scrolloff
vim.opt.scrolloff = 8

