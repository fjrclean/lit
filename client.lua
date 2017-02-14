Player = require "player"
Socket = require "socket"
--require "love.graphics"
--require "love.mouse"
--require "love.window"


--function player_table_update

function client(options)

	love.window.setMode(800,600,nil)

	map = {}

	players = {}
	players_num = 0 -- doesn't count player_local
	player_local = Player.new(5,6) -- local player

	for i=1,3 do
		players[i] = Player.new(i,i)
	end
	
	i = Player.new(5,6)
	j = Player.new(2,6)
	text="Hello"
end

function love.keypressed(key,u)
	--Debug
	if key == "rctrl" then
		debug.debug()
	end
end

--function love.draw()
--	love.graphics.print(player_local.x,400,300)
--	love.graphics.print(table.getn(test_args),400,300)
--	love.graphics.print(test_args[1],400,300)
--	for i,v in ipairs(test_args)
--end

