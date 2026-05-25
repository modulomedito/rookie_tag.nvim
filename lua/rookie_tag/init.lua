local commands = require('rookie_tag.commands')
local keymaps = require('rookie_tag.keymaps')
local core = require('rookie_tag.core')

local M = {}

function M.setup(opts)
    -- Initialize user commands
    commands.setup()

    -- Initialize default keymaps
    keymaps.setup()
end

-- Expose core functions in case users want to map them manually
M.update_tags = core.update_tags
M.search_tags = core.search_tags
M.search_global_tags = core.search_global_tags
M.add_file_name_tags = core.add_file_name_tags
M.search_file_name_tags = core.search_file_name_tags

return M
