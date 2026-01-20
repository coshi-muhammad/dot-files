return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,
      sources = {
        -- null_ls.builtins.diagnostics.ruff,
        -- null_ls.builtins.formatting.cmake_lint,
        -- null_ls.builtins.diagnostics.trivy,
        -- null_ls.builtins.diagnostics.stylelint,
        -- require("none-ls.diagnostics.eslint"),
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.clang_format,
        -- null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.black,
        -- null_ls.builtins.formatting.isort,
        -- null_ls.builtins.formatting.cmake_format,
        -- null_ls.builtins.code_actions.refactoring,
        -- null_ls.builtins.code_actions.eslint,
      },
    })
  end,
}
