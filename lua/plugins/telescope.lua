return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      find_files = {
        hidden = true, -- include dotfiles
        no_ignore = true, -- include files listed in .gitignore
      },
    },
  },
}
