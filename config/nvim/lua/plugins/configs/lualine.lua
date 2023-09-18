require 'lualine'.setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
    component_separators = '|',
    -- section_separators = { left = '', right = '' },
    -- section_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      {
        'mode',
        color = {
          gui = 'bold'
        }
      }
    },
    lualine_b = { 'branch' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  -- tabline = {
  --   lualine_a = {
  --     {
  --       'buffers',
  --       icons_enabled = false,
  --     }
  --   },
  --   lualine_b = {},
  --   lualine_c = {},
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = {}
  -- },
  extensions = {}
}
