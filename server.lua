Player = require "player"
Socket = require "socket"

function server(options)

	mappath = string.format("maps/%s.lua",options.map)
	if love.filesystem.exists(mappath) then
		print(string.format("loading %s",mappath))
		mappath = string.format("maps/%s",options.map)
		map = require(mappath)
	else
		print(string.format("error: %s cannot be found",mappath))		
		love.event.quit()
	end

	players = {}

	for i=1,3 do
		players[i] = Player.new(i,i)
	end
	
	i = Player.new(5,6)
	j = Player.new(2,6)
	text="Hello"
end

