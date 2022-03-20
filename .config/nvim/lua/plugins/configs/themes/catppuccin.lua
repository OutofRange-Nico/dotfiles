local catppuccin = require("catppuccin")

catppuccin.setup{
  transparent_background = false,
  term_colors = true,
  styles = {
    comments = "italic",
    functions = "italic",
    keywords = "italic",
    strings = "italic",
    variables = "italic",
  },
  barbar = true,
  which_key = true
}
