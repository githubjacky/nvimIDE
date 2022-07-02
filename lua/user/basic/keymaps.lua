local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
local term_opt = {silent = true}

map("", "<Space>", "<Nop>", opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- normal mode
-- nevigate line
map("n", "<Tab>", "$", opt)
map("n", "<S-Tab>", "0", opt)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opt)
map("n", "<S-h>", ":bprevious<CR>", opt)

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opt)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opt)

-- telescope
map("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opt)
map("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opt)

-- Stay in indent mode
map("n", "<", "a<C-d><Esc>", opt)
map("n", ">", "a<C-t><Esc>", opt)


-- insert mode
map("i", "jk", "<Esc>", opt)


-- visual mode
-- Stay in indent mode
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Move text up and down
map("v", "jk", "<Esc>", opt)
map("v", "<A-j>", ":m .+1<CR>==", opt)
map("v", "<A-k>", ":m .-2<CR>==", opt)
map("v", "p", '"_dP', opt)


-- visual block mode
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opt)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opt)

-- terminal mode
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opt)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opt)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opt)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opt)
