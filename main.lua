local zip = require("LoveZip")

function love.load()
  zip.zip("/Result.zip", "test1.txt", "test2.txt", "test3", "test3/test4")
end

function love.draw()
  love.graphics.setColor(1,1,1,1)
  love.graphics.print("Done",50,50)
end