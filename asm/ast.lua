local module = {}
local lexer = require"lexer"

local testLex = [[
pin 16;
pin 1;
			
iss 1 {
	swp 1, 1;
}
]]

module.ast = function(table1)
	local tokens = require"tokens"
	for _,v in pairs(table1) do
		
	end
end

for k,v in pairs(module.ast(lexer.lex(testLex))) do
	print(k)
end

return module