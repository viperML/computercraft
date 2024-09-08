local M = {}

M.p = function(...)
  for i, v in ipairs(arg) do
    print(textutils.serialise(v))
  end
end

return M
