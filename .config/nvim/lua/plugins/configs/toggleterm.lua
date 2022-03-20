local term = require("toggleterm")

term.setup({
  function(t)
    if t.direction == "horizontal" then
      return 15
    elseif t.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = "<F12>",
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminal = {},
  shading_factor = "<number>",
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    width = 150,
    height = 35,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal"
    }
  }
})
