local status_ok, cat = pcall(require, "catppuccin")
if not status_ok then
    vim.notify("error loading cattppuccin")
    return
end 
vim.cmd.colorscheme "catppuccin"
