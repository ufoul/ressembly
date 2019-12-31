local module = {
	convert = {
		pin  = {ilk = "function", args = 1},
		swp  = {ilk = "function", args = 2},
		iss  = {ilk = "if"},
	},
	convertSpecial = { --when the program sees these characters, it will put the current token onto the lex table and this token
		["{"]= "start",
		["}"]= "end",
		[";"]= "semicolon",
		[","]= "comma",
	},
	whitespace = {
		' ',
		'\t',
		'\n',
	},
}


--$FREE MONEY$	$$$300.300.300,50USD$$$!!!!!!!!!!!!!!!!!! (Not clickbait)

return module