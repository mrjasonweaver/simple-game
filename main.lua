-- Hot reload
local lick = require("lick")
lick.reset = true

function love.draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.circle("fill", 800 / 2, 600 / 2, 30)
end
