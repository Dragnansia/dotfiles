-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local colors = {
    bg       = '#202020',
    fg       = '#ebdbb2',
    yellow   = '#EEBD35',
    cyan     = '#7fa2ac',
    darkblue = '#458588',
    green    = '#689d6a',
    orange   = '#d65d0e',
    violet   = '#a9a1e1',
    magenta  = '#b16286',
    blue     = '#7fa2ac',
    red      = '#fb4934',
}

local config = {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

local lualine = require('lualine')

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.red },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.darkblue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

ins_right {
  'lsp_progress',
  colors = {
    percentage  = colors.cyan,
    title  = colors.cyan,
    message  = colors.cyan,
    spinner = colors.cyan,
    lsp_client_name = colors.magenta,
    use = true,
  },
  separators = {
    component = ' ',
    progress = ' | ',
    message = { pre = '(', post = ')'},
    percentage = { pre = '', post = '%% ' },
    title = { pre = '', post = ': ' },
    lsp_client_name = { pre = '[', post = ']' },
    spinner = { pre = '', post = '' },
    message = { commenced = 'In Progress', completed = 'Completed' },
  },
  display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage' } },
  timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
  spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
}

lualine.setup(config)
