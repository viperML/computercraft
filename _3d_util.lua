local M = {}

---Pretty print to console
---@vararg any
M.pp = function(...)
  local args = { ... }
  local result = ""

  for i, v in ipairs(args) do
    if i ~= 1 then
      result = result .. ", "
    end
    if type(v) == "string" then
      result = result .. v
    else
      result = result .. require("cc.pretty").pretty(v)
    end
  end

  print(result)
end

---@class Cylinder
---@field x number
---@field z number
---@field r number

---@return Cylinder
---@param x number
---@param z number
---@param r number
M.cylinder = function(x, z, r)
  ---@type Cylinder
  local result = {
    x = x,
    z = z,
    r = r,
  }

  return result
end

---@param cyl Cylinder
---@param x number
---@param z number
---@return boolean
M.inCylinder = function(cyl, x, z)
  local delta_x = x - cyl.x
  local delta_z = z - cyl.z

  local dist = math.sqrt(delta_x * delta_x + delta_z * delta_z)

  return dist <= cyl.r
end

---@class Square
---@field x number
---@field z number
---@field l number

---@class Position
---@field x number
---@field y number
---@field z number

M.position = function()
  ---@type Position
  return {
    x = 0,
    y = 0,
    z = 0,
  }
end

---@param pos Position
---@param square Square
M.walk_square = function(pos, square)
  
end

---@param l number
M.squareFromPos = function(l)
  ---@type Square
  return {
    x = 0,
    z = 0,
    l = l,
  }
end

return M
