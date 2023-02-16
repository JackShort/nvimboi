local Remap = require("config.keymap")
local Leap = require("config.leap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap local silent = { silent = true }

require("leap").set_default_keymaps()

-- pasting and yanking remmappings
xnoremap("<leader>p", "\"_dP")
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- triggers
nnoremap("<leader>tn", "<cmd>Ex<CR>")
nnoremap("<leader>tu", ":UndotreeShow<CR>")

-- Leap remmappings
nnoremap("<leader>k", function()
    Leap.leap_lines_up()
end)
vnoremap("<leader>k", function()
    Leap.leap_lines_up()
end)
nnoremap("<leader>j", function()
    Leap.leap_lines_down()
end)
vnoremap("<leader>j", function()
    Leap.leap_lines_down()
end)

if vim.g.vscode == nil then
  -- Telescope
  nnoremap("<leader>ff", function()
      require("telescope.builtin").find_files()
  end)
  nnoremap("<leader>fp", function()
      require("telescope.builtin").buffers()
  end)
  nnoremap("<leader>fs", function()
      require("telescope.builtin").live_grep()
  end)
  nnoremap("<leader>fb", function()
    require("telescope").extensions.file_browser.file_browser()
  end)
  nnoremap("gt", ":Telescope lsp_type_definitions<CR>", silent)
  nnoremap("gr", ":Telescope lsp_references<CR>", silent)
  nnoremap("ge", ":Telescope diagnostics<CR>", silent)

  -- navigation
  nnoremap("<leader>'", ":e#<CR>", silent)

  -- twilight + zen
  nnoremap("<leader>et", ":Twilight<CR>", silent)
  nnoremap("<leader>;", ":TZFocus<CR>", silent)
  nnoremap("<leader>ez", ":TZAtaraxis<CR>", silent)

  -- coc
  -- vim.keymap.set('n', 'gh', ':call CocActionAsync("doHover")<CR>', silent)
  -- vim.keymap.set('n', '<leader>d', ':call CocAction("jumpDefinition", v:false)<CR>', silent)
  -- vim.keymap.set('n', '<leader>t', ':call CocAction("jumpTypeDefinition", v:false)<CR>', silent)
  -- nnoremap("gd", ":Telescope coc definitions<CR>", silent)
  -- nnoremap("gt", ":Telescope coc type_definitions<CR>", silent)
  -- nnoremap("gi", ":Telescope coc implementations<CR>", silent)
  -- nnoremap("gr", ":Telescope coc references<CR>", silent)
  -- nnoremap("<leader>td", ":Telescope coc diagnostics<CR>", silent)
  --
  -- vim.cmd([[
  --     inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  --     inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "<TAB>"
  --    
  --     function! CheckBackspace() abort
  --       let col = col('.') - 1
  --       return !col || getline('.')[col - 1]  =~# '\s'
  --     endfunction
  -- ]])

  -- harpoon
  nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
  nnoremap("<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, silent)
  nnoremap("<leader>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)

  nnoremap("<C-h>", function() require("harpoon.ui").nav_file(1) end, silent)
  nnoremap("<C-e>", function() require("harpoon.ui").nav_file(2) end, silent)
  nnoremap("<C-s>", function() require("harpoon.ui").nav_file(3) end, silent)
  nnoremap("<C-t>", function() require("harpoon.ui").nav_file(4) end, silent)

  -- vimux
  nnoremap("<leader>or", ":VimuxOpenRunner<CR>", silent)
  nnoremap("<leader>cr", ":VimuxCloseRunner<CR>", silent)
  nnoremap("<leader>rt", ":VimuxRunCommand 'forge test'<CR>", silent)
  nnoremap("<leader>rga", ":VimuxRunCommand 'git add .'<CR>", silent)
  nnoremap("<leader>rgcm", ":VimuxRunCommand 'git checkout main'<CR>", silent)
end
