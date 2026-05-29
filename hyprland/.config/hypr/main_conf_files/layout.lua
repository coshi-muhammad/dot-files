hl.config({
  master = {
    allow_small_split = false,
    mfact = 0.75,
    new_status = "slave",
  },
  scrolling = {
    fullscreen_on_one_column = false,
    column_width = 0.75,
    focus_fit_method = 0,
  }
})

hl.workspace_rule({
  workspace = "4",
  layout = "scrolling",
})
