# a robot with the ability to mave and turn
class Robot

  attr_reader :position,:direction

  def initialize(position, direction, max)
    @position = position
    @direction = direction
    @max = max
  end
  
  def turn_right
    @direction = @direction.right
    return Robot.new(@position,@direction,@max)
  end

  def turn_left
    @direction = @direction.left
    return Robot.new(@position,@direction,@max)
  end

  def move
    @position = @position.move(@direction, @max)
    return Robot.new(@position,@direction,@max)
  end

  def ==(other)
    @position = other.position
    @direction = other.direction
  end

  def to_s
    @position.to_s + " " + @direction.to_s
  end

end