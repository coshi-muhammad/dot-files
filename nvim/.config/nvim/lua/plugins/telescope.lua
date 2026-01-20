return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', "ahmedkhalf/project.nvim" },
    config = function()
      require('telescope').load_extension('projects')
      require("telescope").load_extension("todo-comments")
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find git files files' })
      vim.keymap.set('n', '<leader>fp', "<cmd>Telescope projects<CR>", { desc = 'Telescope projects' })
      vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<CR>",
        { desc = "Telescope todo's" })
    end
  }, {
  "nvim-telescope/telescope-ui-select.nvim",
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({})
        },
      },
      defaults = {
        file_ignore_patterns = {
          "node_modules/",
          "%.venv/",
          "__pycache__/",
          "%.git/",
          "%.cache/",
          "%.mypy_cache/",
          "%.pytest_cache/"
        }
      },
      pickers = {
        find_files = {
          hidden = true,
        }
      }
    })
    require("telescope").load_extension("todo-comments")
  end
}
}
