local globals = require("main_conf_files.variables")


-- Application keybinds
hl.bind(globals.key_combinations.main_mod .. " + RETURN", hl.dsp.exec_cmd(globals.launch_commands.terminal))
hl.bind(globals.key_combinations.main_mod .. " + B", hl.dsp.exec_cmd(globals.launch_commands.browser))
hl.bind(globals.key_combinations.main_mod .. " + F", hl.dsp.exec_cmd(globals.launch_commands.file_manager))
hl.bind(globals.key_combinations.main_mod .. " + D", hl.dsp.exec_cmd(globals.launch_commands.chat_app_main))
hl.bind(globals.key_combinations.main_mod .. " + T", hl.dsp.exec_cmd(globals.launch_commands.clock))
hl.bind("XF86Calculator", hl.dsp.exec_cmd(globals.launch_commands.calculator))

-- search with rofi
hl.bind(globals.key_combinations.main_mod .. " + SPACE", hl.dsp.exec_cmd(globals.launch_commands.app_search))
hl.bind(globals.key_combinations.main_mod .. " + U", hl.dsp.exec_cmd(globals.launch_commands.window_search))
hl.bind(globals.key_combinations.main_mod .. " + E", hl.dsp.exec_cmd(globals.launch_commands.emoji_search))

-- screen shot commands
hl.bind("Print", hl.dsp.exec_cmd(globals.action_commands.screenshot_monitor))
hl.bind(globals.key_combinations.main_mod .. " + Print", hl.dsp.exec_cmd(globals.action_commands.screenshot_window))
hl.bind(globals.key_combinations.secondary_mod .. " + Print", hl.dsp.exec_cmd(globals.action_commands.screenshot_region))

-- toggles
hl.bind(globals.key_combinations.main_mod .. " + W", function()
  hl.exec_cmd(globals.action_commands.panel_helper .. " wallpaper -r")
end)
hl.bind(globals.key_combinations.main_mod .. " + P", function()
  require("scripts." .. globals.scripts.power_profiles_toggle)
end)
hl.bind("F9", function()
  require("scripts." .. globals.scripts.idling_toggle)
end)

-- caelestia controls
hl.bind(globals.key_combinations.main_mod .. " + R",
  hl.dsp.exec_cmd("pkill " .. globals.action_commands.panel_helper .. " ; " .. globals.launch_commands.panel))
hl.bind(globals.key_combinations.main_mod .. " + M", hl.dsp.global("caelestia:dashboard"))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + M",
  hl.dsp.global("caelestia:session"))
hl.bind(globals.key_combinations.main_mod .. " + C", hl.dsp.exec_cmd("caelestia shell controlCenter open"))


-- Window controls
hl.bind(globals.key_combinations.main_mod .. " + Q", hl.dsp.window.close("activewindow")) -- request closing
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + Q",
  hl.dsp.window.kill("activewindow"))                                                     -- forcefully kills it
hl.bind(globals.key_combinations.main_mod .. " + V", hl.dsp.window.float({ "toggle", "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + T",
  hl.dsp.window.pin({ "toggle", "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + A", hl.dsp.window.fullscreen({ "toggle", "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + X", hl.dsp.layout("swapwithmaster master"))

-- Change window foucus
hl.bind(globals.key_combinations.main_mod .. " + H",
  hl.dsp.focus({ direction = "left" }))
hl.bind(globals.key_combinations.main_mod .. " + L",
  hl.dsp.focus({ direction = "right" }))
hl.bind(globals.key_combinations.main_mod .. " + K",
  hl.dsp.focus({ direction = "up" }))
hl.bind(globals.key_combinations.main_mod .. " + J",
  hl.dsp.focus({ direction = "down" }))

-- Switch workspace
hl.bind(globals.key_combinations.main_mod .. " + 1", hl.dsp.focus({ workspace = 1, true }))
hl.bind(globals.key_combinations.main_mod .. " + 2", hl.dsp.focus({ workspace = 2, true }))
hl.bind(globals.key_combinations.main_mod .. " + 3", hl.dsp.focus({ workspace = 3, true }))
hl.bind(globals.key_combinations.main_mod .. " + 4", hl.dsp.focus({ workspace = 4, true }))
hl.bind(globals.key_combinations.main_mod .. " + 5", hl.dsp.focus({ workspace = 5, true }))
hl.bind(globals.key_combinations.main_mod .. " + 6", hl.dsp.focus({ workspace = 6, true }))
hl.bind(globals.key_combinations.main_mod .. " + 7", hl.dsp.focus({ workspace = 7, true }))
hl.bind(globals.key_combinations.main_mod .. " + 8", hl.dsp.focus({ workspace = 8, true }))
hl.bind(globals.key_combinations.main_mod .. " + 9", hl.dsp.focus({ workspace = 9, true }))
hl.bind(globals.key_combinations.main_mod .. " + 0", hl.dsp.focus({ workspace = 10, true }))

-- Move window to workspace
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 1",
  hl.dsp.window.move({ workspace = 1, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 2",
  hl.dsp.window.move({ workspace = 2, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 3",
  hl.dsp.window.move({ workspace = 3, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 4",
  hl.dsp.window.move({ workspace = 4, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 5",
  hl.dsp.window.move({ workspace = 5, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 6",
  hl.dsp.window.move({ workspace = 6, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 7",
  hl.dsp.window.move({ workspace = 7, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 8",
  hl.dsp.window.move({ workspace = 8, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 9",
  hl.dsp.window.move({ workspace = 9, follow = true, window = "activewindow" }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + 0",
  hl.dsp.window.move({ workspace = 10, follow = true, window = "activewindow" }))

-- managing the special workspace
hl.bind(globals.key_combinations.main_mod .. " + I", hl.dsp.workspace.toggle_special(""))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + I",
  function()
    if hl.get_active_special_workspace() then
      hl.dispatch(hl.dsp.window.move({ workspace = "+0", follow = false }))
    else
      hl.dispatch(hl.dsp.window.move({ workspace = "special", follow = false }))
    end
  end
)

-- resizing windows
hl.bind(globals.key_combinations.main_mod .. " + equal", hl.dsp.window.resize({ x = 70, y = 0, relative = true }))
hl.bind(globals.key_combinations.main_mod .. " + minus", hl.dsp.window.resize({ x = -70, y = 0, relative = true }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + equal",
  hl.dsp.window.resize({ x = 0, y = -40, relative = true }))
hl.bind(globals.key_combinations.main_mod .. " + " .. globals.key_combinations.secondary_mod .. " + minus",
  hl.dsp.window.resize({ x = 0, y = 40, relative = true }))

-- window mouse controls
hl.bind(globals.key_combinations.main_mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(globals.key_combinations.main_mod .. " + mouse:273", hl.dsp.window.resize())

-- volume control
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))

-- birghtness controls
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl  set 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl  set 5%-"))

-- media controls
-- FIX: next and previous arent working check with playerctl how they should work
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause")) -- dont actually have a pause button so this is just a place holder
