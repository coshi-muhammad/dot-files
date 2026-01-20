return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          " ██████╗ ██████╗ ███████╗██╗  ██╗██╗",
          "██╔════╝██╔═══██╗██╔════╝██║  ██║██║",
          "██║     ██║   ██║███████╗███████║██║",
          "██║     ██║   ██║╚════██║██╔══██║██║",
          "╚██████╗╚██████╔╝███████║██║  ██║██║",
          " ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝",
          "", "", "",
        },
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find Files',
            desc_hl = 'String',
            key = "f",
            key_hl = 'Number',
            key_format = ' %s',
            action = ':Telescope find_files'
          },
          {
            icon = ' ',
            desc = 'Find word',
            key = "g",
            key_format = ' %s',
            action = ':Telescope live_grep'
          },
          {
            icon = ' ',
            desc = 'open configuration folder',
            key = 'c',
            key_format = ' %s',
            action = ':edit ~/.config/nvim'
          },
          {
            icon = ' ',
            desc = 'open the hyprland configuration',
            key = 'h',
            key_format = ' %s',
            action = ':edit ~/.config/hypr'
          },
        },
        footer = { "", "", "", "remember never use the mouse󰍾", "", "", "", }
      }
    }
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
