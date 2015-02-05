class Position

  attr_reader :x,:y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def move(direction)
    if direction == Direction.north
      @y +=1
    elsif direction == Direction.east
      @x +=1
    elsif direction == Direction.south
      @y -=1
    end
    return Position.new(@x,@y)
  end

  def ==(other)
    (@x == other.x && @y == other.y)
  end


end
