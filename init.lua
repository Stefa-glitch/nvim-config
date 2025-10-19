--Bootstrap lazy.nvim
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
    vim.cmd('quit')
  end
end
vim.opt.rtp:prepend(lazypath)

-- Basic editor settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.completeopt = "menuone,noselect"

-- Backup and undo settings
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.swapfile = false

-- Set leader keys BEFORE loading plugins
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Plugin setup with proper configuration
require("lazy").setup({
  spec = { 
    { import = "plugins" },  -- Load all modules in plugins/
  },
  install = {
    colorscheme = { "onedark_vivid" },  -- Set default colorscheme for first install
  },
  checker = {
    enabled = true,
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- 🌳 Treesitter
local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if ok then
  treesitter.setup({
    ensure_installed = { "lua", "javascript", "python", "html", "css" },
    highlight = { enable = true },
    indent = { enable = true },
  })
end

-- 📂 Neo-tree setup
local ok, neotree = pcall(require, "neo-tree")
if ok then
  neotree.setup({
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  })
end

-- �️ Keymaps
local map = vim.keymap.set

-- General mappings

map('n', '<leader>l', ':Lazy<CR>', {desc = 'Lazy page'} )
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
map('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })


-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
map('n', '<C-l>', '<C-w>l', { desc = 'Window right' })
map('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Window up' })

-- Buffer navigation
map('n', '<S-h>', ':bprevious<CR>', { desc = 'Prev buffer' })
map('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })

-- 📂 Neo-tree keymaps 
map('n', '<leader>e', ':Neotree filesystem reveal right<CR>', { desc = 'Toggle file explorer right' })
map('n', '<leader>el', ':Neotree filesystem reveal left<CR>', { desc = 'Toggle file explorer left' })

-- 🔍 Telescope keymaps
local ok, telescope = pcall(require, 'telescope.builtin')
if ok then
  map('n', '<C-f>', telescope.find_files, { desc = 'Find files' })
  map('n', '<leader>fg', telescope.live_grep, { desc = 'Live grep' })
  map('n', '<leader>fb', telescope.buffers, { desc = 'Find buffers' })
  map('n', '<leader>fh', telescope.help_tags, { desc = 'Find help tags' })
end
