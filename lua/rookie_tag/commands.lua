local core = require('rookie_tag.core')

local M = {}

function M.setup()
    vim.api.nvim_create_user_command('RookieTagUpdate', core.update_tags, { desc = 'Update tags in current line' })
    vim.api.nvim_create_user_command('RookieTagSearch', core.search_tags, { desc = 'Search tags in current buffer' })
    vim.api.nvim_create_user_command('RookieTagSearchGlobal', core.search_global_tags, { desc = 'Search tags globally' })
    vim.api.nvim_create_user_command('RookieTagAddFileName', core.add_file_name_tags, { desc = 'Add tags to current file name' })
    vim.api.nvim_create_user_command('RookieTagSearchFileName', core.search_file_name_tags, { desc = 'Search files by name tags' })
end

return M
