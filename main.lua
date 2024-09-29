-- Hot reload
local lick = require("lick")
lick.reset = true

local player = {
	x = 20,
	y = 20,
}

local SPEED = 300

function love.load() end

function love.update(dt)
	if love.keyboard.isDown("l") then
		player.x = player.x + SPEED * dt
	end
	if love.keyboard.isDown("h") then
		player.x = player.x - SPEED * dt
	end
	if love.keyboard.isDown("j") then
		player.y = player.y + SPEED * dt
	end
	if love.keyboard.isDown("k") then
		player.y = player.y - SPEED * dt
	end
end

function love.draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", player.x, player.y, 100, 20)
	love.graphics.setColor(0, 1, 0)
	love.graphics.line(player.x + 20, player.y + 20, player.x + 100, player.y + 10)
end
