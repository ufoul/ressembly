local lg = love.graphics
local lk = love.keyboard
local table = table

function table.contains(table1,item)
	for _,v in pairs(table1) do
		if v == item then
			return true
		end
	end
	return false
end

local keyMap = {--change these to change the keys or some shit
	[1]='w',
	[2]='a',
	[3]='s',
	[4]='d',
	[5]='e',
	[6]="space",
	[7]="space",
	[8]='j',
}

local module = function(memory)
	
	local jumpx = lg.getWidth()/8
	local jumpy = lg.getHeight()/#memory
	for j,v in pairs(memory) do
		for i,l in pairs(v) do
			love.graphics.setColor(l,l,l)
			for n,m in pairs(keyMap) do
				if lk.isDown(m) then
					memory[#memory][n] = 1
				else
					memory[#memory][n] = 0
				end
			end
			lg.rectangle("fill", jumpx*(i-1), jumpy*(j-1), jumpx*i, jumpy*j)
		end
	end
end

return module