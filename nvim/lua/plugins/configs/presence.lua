local presence = require("presence")

presence:setup{
  auto_update = true,
  neovim_image_text = "The Legend of Neovim",
  main_image = "file",
  enable_line_number = true,
  buttons = false,
  line_number_text = "Line: %s/%s"
}
