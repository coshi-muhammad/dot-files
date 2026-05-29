local globals = {
  launch_commands = {
    terminal = "ghostty",
    file_manager = "dolphin",
    app_search = "rofi -show drun",
    window_search = "rofi -show window",
    emoji_search = "rofi -modi emoji -show emoji",
    browser = "zen-browser",
    chat_app_main = "vesktop",
    calculator = "flatpak run io.github.Qalculate.qalculate-qt",
    clock = "kclock",
    sync_utility = "syncthing",
    panel = "hyprpanel",
    wifi_applet = "nm-applet --indicator",
    wallpaper_engine = "awww-daemon",
    wallpaper_helper = "awws daemon",
    idling_utility = "hypridle",
    polkit = "/usr/lib/hyprpolkitagent/hyprpolkitagent",
    wallet = "kwalletd6",
  },
  action_commands = {
    screenshot_monitor = "hyprshot -m output -m eDP-1 --raw | swappy -f - ",
    screenshot_window = "hyprshot -m window -e active --raw | swappy -f -",
    screenshot_region = "hyprshot -m region --raw | swappy -f -",
  },
  key_combinations = {
    main_mod = "SUPER",
    secondary_mod = "ALT",
    ternary_mod = "CTRL",
    fourth_mod = "SHIFT",
  },
  scripts = {
    wallpaper_toggle = "/home/coshi/.config/hypr/scripts/wallpaper.sh",
    power_profiles_toggle = "power_profiles",
    idling_toggle = "idling",
  }
}


return globals
