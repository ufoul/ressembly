local module = {}
local table = table
getmetatable('').__index = function(str,i) return string.sub(str,i,i) end

function table.contains(table1,item)
	for _,v in pairs(table1) do
		if v == item then
			return true
		end
	end
	return false
end

function table.kontains(table1,item)
	for k,v in pairs(table1) do
		if k == item then
			return true
		end
	end
	return false
end



local testLex = [[
pin 16;
pin 1;
			
iss 1 {
	swp 1, 1;
}
]]

module.lex = function(stringToLex)
	local tokens = require"tokens"
	local lexedTable = {}
	local currentToken = ""
	for i=1,#stringToLex do
		if table.kontains(tokens.convertSpecial, stringToLex[i]) then
			table.insert(lexedTable, currentToken)
			table.insert(lexedTable, stringToLex[i])
			currentToken = ""
		elseif table.contains(tokens.whitespace, stringToLex[i]) then
			if #currentToken > 1 then
				table.insert(lexedTable, currentToken)
				currentToken = ""
			end
		else
			currentToken = currentToken .. stringToLex[i]
		end
	end
	return lexedTable
end



return module