local loveZip = require("love-zip")

function love.load()
  assert(loveZip.writeZip("TestArchive","TestArchive.zip"))
  love.system.openURL("file://"..love.filesystem.getSaveDirectory())
end

function love.draw()
  love.graphics.setColor(1,1,1,1)
  love.graphics.print("Done",50,50)
end