return {
  -- gitsigns - Git feedback and integration
  'lewis6991/gitsigns.nvim',
  config = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  }
}
