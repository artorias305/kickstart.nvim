-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { 'stevearc/oil.nvim', opts = {
    columns = { 'permissions', 'size', 'mtime' },
    view_options = { show_hidden = true },
  } },
  { 'chomosuke/typst-preview.nvim', opts = {} },
  {
    'ej-shafran/compile-mode.nvim',
    config = function()
      vim.g.compile_mode = {
        input_word_completion = true,
      }
    end,
  },
}
