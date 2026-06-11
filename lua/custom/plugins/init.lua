-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { 'stevearc/oil.nvim', opts = {
    columns = { 'permissions', 'size', 'mtime' },
    view_opts = { show_hidden = true },
  } },
  { 'chomosuke/typst-preview.nvim', opts = {} },
  {
    'dmtrKovalenko/fff.nvim',
    build = function() require('fff.download').download_or_build_binary() end,
    lazy = false,
    keys = {
      { '<leader>sf', function() require('fff').find_files() end, desc = '[S]earch [F]iles' },
      { '<leader>sg', function() require('fff').live_grep() end, desc = '[S]earch by [G]rep' },
      { '<leader>sn', function() require('fff').find_files_in_dir '~/.config/nvim' end, desc = '[S]earch [N]eovim files' },
      { '<leader>sw', function() require('fff').live_grep { query = vim.fn.expand '<cword>' } end, desc = '[S]earch current [W]ord' },
    },
  },
}
