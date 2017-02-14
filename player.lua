Player = {}

function Player.new(x,y)
	local self = setmetatable({}, Player)
	self.x = x
	self.y = y
	return self
end

function Player.setX(self,x)
	self.x = x
end

function Player.setY(self,y)
	self.y = y
end

return Player
