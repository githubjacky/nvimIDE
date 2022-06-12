local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  vim.notify("plugin: impatient.nvim broke")
  return
end

impatient.enable_profile()
