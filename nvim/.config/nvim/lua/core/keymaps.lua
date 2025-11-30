-- General NeoVim options

vim.opt.shiftwidth = 4 -- Let GuessWidth define shiftwidth

-- Make line numbers default
vim.o.number = true
-- Enable relative line numbers
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Confirm on quit if unsaved changes
vim.o.confirm = true

-- Change directory
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open file explorer (Ex mode)" })

-- Launch LazyGit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "Open lazygit" })

-- Set jj and jk to escape insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Disable array keys for navigation
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
vim.keymap.set("v", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("v", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("v", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("v", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Show diagnostics infor in a floating window
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror" })
