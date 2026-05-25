local core = require('rookie_tag.core')

local M = {}

function M.setup()
    vim.keymap.set('n', '<leader>FF', core.search_global_tags, { desc = 'Search global tags' })
    vim.keymap.set('n', '<leader>Ff', core.search_file_name_tags, { desc = 'Search file name tags' })
    vim.keymap.set('n', '<leader>ff', core.search_tags, { desc = 'Search tags' })
    vim.keymap.set('n', '<leader>fa', core.update_tags, { desc = 'Update tags' })
    vim.keymap.set('n', '<leader>Fa', core.add_file_name_tags, { desc = 'Add file name tags' })
end

return M
