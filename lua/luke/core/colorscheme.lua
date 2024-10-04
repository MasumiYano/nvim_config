vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF5370" })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg="#FFCB6B" })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg="#82AAFF" })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg="#C3E88D" })
  end,
})


-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
