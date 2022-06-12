local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Colorscheme
vim.cmd('colorscheme tokyonight')

-- lualine
require('lualine').setup {
  options = { theme  = 'tokyonight' },
}

-- Bufferline
require("bufferline").setup{}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

      require("neo-tree").setup({
        window = {
          position = "right",
          width = 25,
          },
  })

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
