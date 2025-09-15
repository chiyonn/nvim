-- Markdown specific settings
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true

-- Add the key mappings only for Markdown files in a zk notebook.
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
  local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
  local opts = { noremap=true, silent=false }

  -- Open the link under the caret.
  map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)

  -- Create a new note after asking for its title.
  map("n", "<leader>zn", "<Cmd>ZkNew { dir = 'notes', title = vim.fn.input('Title: ') }<CR>", opts)
  map("v", "<leader>znt", ":'<,'>ZkNewFromTitleSelection { dir = 'notes' }<CR>", opts)
  map("v", "<leader>znc", ":'<,'>ZkNewFromContentSelection { dir = 'notes', title = vim.fn.input('Title: ') }<CR>", opts)

  -- Preview a linked note.
  map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
end
