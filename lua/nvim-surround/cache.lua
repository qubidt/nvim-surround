local M = {}

-- These variables hold cache values for dot-repeating the three actions

-- Insert only caches the delimiters to be inserted (table for left/right)
M.insert = {}
-- Delete only caches the character to be deleted
M.delete = {}
-- Change caches both the character to be deleted and also the delimiters to be inserted
M.change = {}

-- Sets the callback function for dot-repeating.
---@param func_name string A string representing the callback function's name.
M.set_callback = function(func_name)
    vim.go.operatorfunc = "v:lua.require'nvim-surround.utils'.NOOP"
    vim.cmd("normal! g@l")
    vim.go.operatorfunc = func_name
end

return M
