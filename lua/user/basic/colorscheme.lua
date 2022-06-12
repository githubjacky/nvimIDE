-- colorscheme
--use "LunarVim/onedarker.nvim"
--use "folke/tokyonight.nvim"
--use "LunarVim/darkplus.nvim"

local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    vim.cmd [[colorscheme default]]
    return
end

local scheme1_status_ok, onedark = pcall(require, "onedark")
if scheme1_status_ok then
    onedark.setup {
        style = 'deep',
        transparent = true,
        code_style = {
            funcitons = 'italic,bold',
            strings = 'italic',
            variables = 'bold',
        },
    }
else
    vim.notify("plugin: onedark.nvim broke")
    return
end

vim.g.tokyonight_style = "night"
