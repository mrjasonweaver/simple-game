-- Hot reload.
local lick = require("lick")
lick.reset = true

-- Set up player position.
local player = {
	x = 20,
	y = 20,
}

-- We want a speed of 200 pixels per move.
local SPEED = 200

function love.load()
	-- load gameplay
end

-- Update game state with keyboard moves.
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

-- Draw the simple graphics for gameplay.
function love.draw()
	love.graphics.setColor(20 / 255, 200 / 255, 200 / 255)
	love.graphics.rectangle("fill", player.x, player.y, 100, 20)
	love.graphics.setColor(1, 1, 1)
	love.graphics.line(player.x + 20, player.y + 20, player.x + 100, player.y + 10)
end
