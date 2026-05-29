local globals = require("main_conf_files.variables")
-- executed at the start
hl.on("hyprland.start", function()
  -- background tasks
  hl.exec_cmd(globals.launch_commands.sync_utility)
  hl.exec_cmd(globals.launch_commands.panel)
  hl.exec_cmd(globals.launch_commands.wallpaper_engine)
  hl.exec_cmd(globals.launch_commands.polkit)
  hl.exec_cmd(globals.launch_commands.wallet)

  -- start applications
  hl.exec_cmd(globals.launch_commands.terminal)
  hl.exec_cmd(globals.launch_commands.file_manager)
  hl.exec_cmd(globals.launch_commands.browser)
  hl.exec_cmd(globals.launch_commands.chat_app_main)
end)

-- execute at hyprland reload
hl.on("config.reloaded", function()

end)
