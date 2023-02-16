require("telescope").setup({
    defaults = {
        color_devicons = true,
    },
    extensions = {
        file_browser = {
          path = "%:p:h",
          cwd_to_path = true,
        },
    },
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
