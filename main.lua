-- Hot reload.
local lick = require("lick")
lick.reset = true

-- Set up player position.
local player = {
	x = 250,
	y = 300,
}

-- We want a speed of 200 pixels per move.
local SPEED = 100

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
	love.graphics.setColor(20 / 255, 200 / 255, 100 / 255)

	-- Define triangle verices (x, y coordinates )
	local trianglePoints = {
		player.x + 100,
		player.y + 100,
		player.x + 200,
		player.y + 100,
		player.x + 150,
		player.y,
	}

	love.graphics.polygon("fill", trianglePoints)
end
