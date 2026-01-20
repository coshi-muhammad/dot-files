return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    -- No version pin needed here (defaults to v2.0.0)
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls" },
        -- NEW: This replaces setup_handlers.
        -- It tells Neovim to automatically start any server installed by Mason.
        automatic_enable = true,
      })

      -- You no longer call .setup() for every server.
      -- Instead, you configure them globally via the new Neovim API:
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })
    end,
  },
  -- We keep this here so lazy.nvim knows to install it,
  -- but the actual logic is now handled in the block above.
  { "neovim/nvim-lspconfig" },
}
