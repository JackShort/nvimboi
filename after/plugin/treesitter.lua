require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,
    highlight = {
        enable = true,
    },
    indent = {
      enable = true
    },
    autotag = {
        enable = true,
    },

    textobjects = {
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]]"] = "@function.outer",
          ["]m"] = "@class.outer",
        },
        goto_next_end = {
          ["]["] = "@function.outer",
          ["]M"] = "@class.outer",
        },
        goto_previous_start = {
          ["[["] = "@function.outer",
          ["[m"] = "@class.outer",
        },
        goto_previous_end = {
          ["[]"] = "@function.outer",
          ["[M"] = "@class.outer",
        },
      },
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["~"] = "@parameter.inner",
        },
      },
  },
}
