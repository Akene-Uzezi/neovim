return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")

    vim.api.nvim_set_hl(0, "Normal", { bg = "#111111" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#111111" })
  end,
}
