local notify_status_ok, notify = pcall(require, "notify")
if not notify_status_ok then
    vim.notify("plugin: nvim-notify broke")
    return
end


vim.notify = notify
