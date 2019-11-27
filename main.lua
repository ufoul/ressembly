local sk = require"sidekick" --cd ../.. && cd e && "love\love.exe" "8reg
local lg = love.graphics
love.window.setMode(512,512)


function love.draw()
	sk.drawScreen(sk.memory)
end

