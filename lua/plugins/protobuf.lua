return {
  -- 1. Ensure Mason downloads the LSP binary immediately
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "protols" })
    end,
  },

  -- 2. Configure the Protobuf LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        protols = {},
      },
    },
  },

  -- 3. Ensure Treesitter syntax highlighting for .proto files
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "proto" })
      end
    end,
  },

  -- 4. Enable auto-formatting on save for .proto files
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        proto = { "buf" },
      },
    },
  },
}
