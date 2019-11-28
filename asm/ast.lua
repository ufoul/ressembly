local module = {}
local lexer = require"lexer"
local table = table
getmetatable('').__index = function(str,i) return string.sub(str,i,i) end

function table.contains(table1,item, kv)
	if kv == 1 then
	  for k,v in pairs(table1) do
		if k == item then
		  return true
		end
	  end
	  return false
	 else
		for k,v in pairs(table1) do
			if v == item then
				return true
			end
		end
	return false
	end
end

local testLex = [[
pin 16;
pin 1;
			
iss 1 {
	swp 1, 1;
}
]]


module.ast = function(table1)
	local syntaxTree = {}
	local tokens = require"tokens"
	for _,v in pairs(table1) do
		if table.contains(tokens, v, 1) then
			table.insert(syntaxTree, {v, tokens[v].args})
		elseif ilk == "if" then
			
		end
	end
	return syntaxTree
end

local testTaste = module.ast(lexer.lex(testLex))
for k,v in pairs(testTaste) do
	print(v)
end

return module