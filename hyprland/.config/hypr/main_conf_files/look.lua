hl.config({
  general = {
    border_size = 2,
    gaps_in = 3,
    gaps_out = 10,
    col = {
      active_border = 0xFF8FACCE,
      inactive_border = 0xFF595959
    },
    layout = "master",
    resize_on_border = true,
    allow_tearing = true,
  },
  decoration = {
    rounding = 10,
    dim_inactive = true,
    dim_strength = 0.20,

  },
  animations = {
    enabled = true,

    -- Custom Cubic Bezier curves
    beziers = {
      easeOutQuint   = { 0.23, 1, 0.32, 1 },
      easeInOutCubic = { 0.65, 0.05, 0.36, 1 },
      linear         = { 0, 0, 1, 1 },
      almostLinear   = { 0.5, 0.5, 0.75, 1 },
      quick          = { 0.15, 0, 0.1, 1 },
    },

    -- Animation triggers and behaviors
    -- Syntax format: { enabled (bool), speed (num), curve (str), style (str, optional) }
    animations = {
      global        = { true, 10, "default" },
      border        = { true, 5.39, "easeOutQuint" },
      windows       = { true, 4.79, "easeOutQuint" },
      windowsIn     = { true, 1.79, "easeOutQuint", "popin 87%" },
      windowsOut    = { true, 1.49, "linear", "popin 87%" },
      fadeIn        = { true, 1.73, "almostLinear" },
      fadeOut       = { true, 1.46, "almostLinear" },
      fade          = { true, 3.03, "quick" },
      layers        = { true, 3.81, "easeOutQuint" },
      layersIn      = { true, 4, "easeOutQuint", "fade" },
      layersOut     = { true, 1.5, "linear", "fade" },
      fadeLayersIn  = { true, 1.79, "almostLinear" },
      fadeLayersOut = { true, 1.39, "almostLinear" },
      workspaces    = { true, 1.94, "almostLinear", "slidefade" },
      workspacesIn  = { true, 1.21, "almostLinear", "slidefade" },
      workspacesOut = { true, 1.94, "almostLinear", "slidefade" },
      zoomFactor    = { true, 7, "quick" },
    },
  }
})
