function love.load(args)

	options = {}
	
	for i=1,table.getn(args) do
		if args[i] == "-c" then
			options.type = "client"
			i = i+1
			options.address = args[i]
		end
		if args[i] == "-l" then
			options.type = "server"
		end
		if args[i] == "-p" then
			i = i+1
			options.port = args[i]
		end
		if args[i] == "-m" then
			if options.type ~= "server" then
				print("error: loading map with -m <mapname> not valid unless launched as server with -l")
			end
			i = i+1
			options.map = args[i]
		end
	end	

	print(options.map)
	if options.type == "client" then
		dofile "client.lua"
		client(options)
	elseif options.type == "server" then
		dofile "server.lua"
		server(options)
	else
		print("error: please run as either client, -c <server address>, or server, -l")
		love.event.quit()
	end

end
