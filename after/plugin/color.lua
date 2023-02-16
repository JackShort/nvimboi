if vim.g.vscode == nil then
  vim.opt.background = "dark"
  vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

  -- require("catppuccin").setup()

  vim.cmd("colorscheme poimandres")
end
