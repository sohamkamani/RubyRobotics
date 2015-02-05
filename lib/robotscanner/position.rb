#description of the position of everything
class Position

  attr_reader :x,:y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def move(direction, max)
    if direction == Direction.north && @y<max.y
      @y +=1
    elsif direction == Direction.east && @x<max.x
      @x +=1
    elsif direction == Direction.south && @y>0
      @y -=1
    elsif direction == Direction.west && @x>0
      @x -=1
    end
    return Position.new(@x,@y)
  end

  def ==(other)
    (@x == other.x && @y == other.y)
  end

  def to_s
    @x.to_s + " " + @y.to_s
  end


end
