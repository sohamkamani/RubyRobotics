class Direction

	attr_reader :direction

	def initialize(direction)
		@direction = direction
	end

	def self.north
		self.new(1)
	end

	def self.east
		self.new(2)
	end

	def left
		@direction = (@direction - 1) % 4
		return Direction.new(@direction)
	end

	def ==(other)
		self.direction == other.direction
	end
	
	
end