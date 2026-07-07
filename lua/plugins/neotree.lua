return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This makes hidden files visible, but slightly dimmed
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          -- ".git", -- Uncomment if you want to hide the actual .git folder
        },
      },
    },
  },
}
