-- Cursor handling (New native format instead of env vars)
hl.config({
  cursor = {
    no_hardware_cursors = false,     -- change to true if cursor disappears on Nvidia
  },
})

-- Safe Environment Variables for Hyprland
local envs = {
  -- Nvidia Specifics
  NVD_BACKEND = "direct",
  GBM_BACKEND = "nvidia-drm",
  __GLX_VENDOR_LIBRARY_NAME = "nvidia",
  LIBVA_DRIVER_NAME = "nvidia",

  -- App Wayland Forcing
  GDK_BACKEND = "wayland,x11,*",
  MOZ_ENABLE_WAYLAND = "1",
  ELECTRON_OZONE_PLATFORM_HINT = "wayland",

  -- Scaling (Hyprland Only)
  GDK_SCALE = "1.25",
  XCURSOR_SIZE = "14",
  HYPRCURSOR_SIZE = "14",

  -- Qt Theme Rules (Safe here, won't bleed into your Plasma session)
  QT_QPA_PLATFORMTHEME = "qt6ct",
  QT_STYLE_OVERRIDE = "kvantum",
  QT_QUICK_CONTROLS_STYLE = "org.kde.desktop",
  QT_QPA_PLATFORM = "wayland;xcb",

  -- Desktop/Portal context
  XDG_CURRENT_DESKTOP = "Hyprland",
  XDG_SESSION_DESKTOP = "Hyprland",
  XDG_MENU_PREFIX = "arch-",
}

-- Apply the clean list
for k, v in pairs(envs) do
  hl.env(k, v)
end
