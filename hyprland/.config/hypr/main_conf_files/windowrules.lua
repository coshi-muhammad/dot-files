-- fullscreen entertianment media
hl.window_rule({ match = { class = "gamescope", }, fullscreen = true, })
hl.window_rule({ match = { class = "mpv", }, fullscreen = true, })

-- workspace assignmenet
hl.window_rule({ match = { class = ".*" }, workspace = 4 }) -- by default all windows open in the 4th workspace

hl.window_rule({ match = { class = "com.mitchellh.ghostty" }, workspace = 1 })

hl.window_rule({ match = { class = "zen" }, workspace = 2 })

hl.window_rule({ match = { class = "vesktop" }, workspace = 3 })
hl.window_rule({ match = { class = "WhatsApp" }, workspace = 3 })
hl.window_rule({ match = { class = "org.telegram.desktop," }, workspace = 3 })

hl.window_rule({ match = { class = "org.kde.dolphin" }, workspace = 5 })

-- stay in active workspace
hl.window_rule({ match = { class = "io.github.Qalculate.qalculate-qt" }, workspace = "+0" })
hl.window_rule({ match = { class = "org.kde.kweather" }, workspace = "+0" })
hl.window_rule({ match = { class = "org.kde.kclock" }, workspace = "+0" })
hl.window_rule({ match = { class = "org.freedesktop.impl.portal.desktop.kde" }, workspace = "+0" })
hl.window_rule({ match = { class = "swappy" }, workspace = "+0" })
