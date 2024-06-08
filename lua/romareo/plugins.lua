-- Ensure lazy.nvim is installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/lazy/opt/lazy.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        install_path
    })
    print("Installing lazy.nvim, please restart Neovim...")
end

vim.cmd([[packadd lazy.nvim]])

-- Autocommand to reload Neovim when saving this file
vim.cmd([[
    augroup lazy_user_config
        autocmd!
        autocmd BufWritePost init.lua source <afile> | LazySync
    augroup end
]])

-- Initialize lazy.nvim
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    vim.notify("cannot load Lazy") 
    return
end

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, 
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "bash", "javascript", "json", "lua", "python", "html", "css", "markdown", "vim", "yaml"
                }, -- List of parsers to install
                highlight = {
                    enable = true,              -- false will disable the whole extension
                    additional_vim_regex_highlighting = false,
                },
            }
        end,
    },
    { "hrsh7th/nvim-cmp", event = "InsertEnter" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" }, -- lazy load LuaSnip
    { "rafamadriz/friendly-snippets" } -- lazy load friendly-snippets
}

lazy.setup(plugins, {})

