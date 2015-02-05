#description of the direction of anything
class Direction

  attr_reader :direction

  def initialize(direction)
    @direction = direction
  end

  def self.north
    self.new(0)
  end

  def self.east
    self.new(1)
  end

  def self.south
    self.new(2)
  end

  def self.west
    self.new(3)
  end

  def left
    @direction = (@direction - 1) % 4
    return Direction.new(@direction)
  end

  def right
    @direction = (@direction + 1) % 4
    return Direction.new(@direction)
  end

  def ==(other)
    self.direction == other.direction
  end

  def to_s
    if @direction == 0
      return "NORTH"
    elsif @direction == 1
      return "EAST"
    elsif @direction == 2
      return "SOUTH"
    elsif @direction == 3
      return "WEST"
    end
  end
end
