local M = {}
local B = bit or bit32 or require("luakai.lib.vim.bit")

local hash_str = function(str) -- djb2, https://stackoverflow.com/questions/7666509/hash-function-for-string
  local hash = 5381
  for i = 1, #str do
    hash = B.lshift(hash, 5) + string.byte(str, i)
  end
  return hash
end

function M.hash(v) -- Xor hashing: https://codeforces.com/blog/entry/85900
  local t = type(v)
  if t == "table" then
    local hash = 0
    for p, u in next, v do
      hash = B.bxor(hash, hash_str(p .. M.hash(u)))
    end
    return hash
  elseif t == "function" then
    return hash_str(string.dump(v))
  else
    return tostring(v)
  end
end

return M
