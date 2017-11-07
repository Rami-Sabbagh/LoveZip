# LoveZip
A zip compressing library for LÖVE framework without any native libraries dependencies.

## Example:
```lua
local zip = require("LoveZip")

function love.load()
  zip.zip("/Result.zip", "test1.txt", "test2.txt", "test3", "test3/test4")
end

function love.draw()
  love.graphics.setColor(255,255,255,255)
  love.graphics.print("Done",50,50)
end
```

## Credits:
- LuaRocks, for their zip.lua library: https://github.com/luarocks/luarocks/blob/master/src/luarocks/tools/zip.lua
- Neil Richardson, for his CRC32.lua library: https://github.com/openresty/lua-nginx-module/blob/master/t/lib/CRC32.lua
- Me, Rami Sabbagh (RamiLego4Game), for patching zip.lua to use love functions, and CRC32 for using LuaJIT bitop library.