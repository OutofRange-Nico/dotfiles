local keymap = vim.api.nvim_set_keymap

local opts = {
  silent = true
}

keymap("n", "<c-s>", ":w<CR>", {})
keymap("i", "<c-s>", "<Esc>:w<CR>a", {})
keymap("n", "<space>q", ":wq!<CR>", {})
keymap("n", "<space>f", ":lua vim.lsp.buf.formatting_sync()<CR>", opts)

-- NvimTree
keymap("n", "<F2>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<F3>", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<F4>", ":NvimTreeFindFile<CR>", opts)

-- Barbar
keymap("n", "<c-Left>", ":BufferPrevious<CR>", opts)
keymap("n", "<c-Right>", ":BufferNext<CR>", opts)
keymap("n", "<c-m-Left>", ":BufferMovePrevious<CR>", opts)
keymap("n", "<c-m-Right", ":BufferMoveNext<CR>", opts)
keymap("n", "<c-b>", ":BufferClose<CR>", opts)
keymap("n", "<c-,>", ":BufferPin<CR>", opts)

-- Which-key
keymap("n", "<F5>", ":WhichKey<CR>", opts)

local tree = {}

tree.open = function()
  require("bufferline.state").set_offset(31, "FileTree")
  require("nvim-tree").find_file(true)
end

tree.close = function()
  require("bufferline.state").set_offset(0)
  require("nvim-tree").close()
end

return tree
