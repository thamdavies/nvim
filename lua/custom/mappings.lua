---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["bn"] = { "<cmd> :bnext <CR>", "Next buffer" },
    ["bp"] = { "<cmd> :bprevious <CR>", "Previous buffer" },
  },
}

-- more keybinds!

return M
