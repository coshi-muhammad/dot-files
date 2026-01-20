return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
  config = function()
    require("neo-tree").setup({

      filesystem = {
        follow_current_file = true,
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ["h"] = "navigate_up",
          ["l"] = "open",
          ["H"] = "toggle_hidden",
          ["yn"] = function(state)
            local node = state.tree:get_node()
            local name = node.name
            vim.fn.setreg("+", name)
          end,
          ["yp"] = function(state)
            local node = state.tree:get_node()
            local path = node.path
            local relpath = vim.fn.fnamemodify(path, ":~:.") -- relative to CWD
            vim.fn.setreg("+", relpath)
          end,
        },
      },
    })
    vim.keymap.set("n", "<leader>e", ":Neotree focus <CR>")
  end,
}
