# LoveZip
A zip compressing library for LÖVE framework without any native libraries dependencies.

**LÖVE Forums Topic:** https://love2d.org/forums/viewtopic.php?f=5&t=84549&p=216340

## Documentation:
You can find the documentation in LoveZip/init.lua.

Note: the path protection has been removed, so please provide the paths with '/' instead of '\', without any double slashes, and without a slash at the start.

Another note: The library doesn't scan sub-directories, but you can do that manually.

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