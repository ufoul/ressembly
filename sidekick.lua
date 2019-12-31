local table = table -- this makes it faster but why? don't question the master
local module = {}
module.drawScreen = require"drawRegisters"

local function newreg() --create a new register, just returns a table of {0,0,0,0,0,0,0,0} (Ate Zeroooooos) but it's what we call a register so fuck you
	local result = {}
	for i=1,8 do
		table.insert(result, 0)
	end
	return result
end

local memory = {} --I'm doing this outside of a function because fuck you it's my code

for i=1,16 do
	table.insert(memory, newreg()) --put 8 registers in the memory so if you change the 8 then it will be that many registers but dont put a minus number or it will break
end

for _,v in pairs(memory) do
	print()
	for _,k in pairs(v) do
		io.write(k)
	end
end
-- Empty line
--[[module.swapbit = function(bit)
	return(-bit)+1 --1 Mil IQ Bit Flip --by makkusu otaku go subscribe you bigot
end]]

module.memory = memory

return module