vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    width = 35,
    side = 'right',
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  renderer = {
    icons = {
      show = {
        folder_arrow = false,
      }
    },
  }
})

vim.keymap.set("n", "<leader>sb", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "-", ":NvimTreeFocus<CR>")

-- Open NVIMTree on startup

local function open_nvim_tree(data)
  -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  if not real_file and not no_name then
    return
  end

  -- open the tree, find the file but don't focus it
  require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
