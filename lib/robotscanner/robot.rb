class Robot

  attr_reader :position,:direction

  def initialize(position, direction)
    @position = position
    @direction = direction
  end
  
  def turn_right
    @direction = @direction.right
    return Robot.new(@position,@direction)
  end

  def turn_left
    @direction = @direction.left
    return Robot.new(@position,@direction)
  end

  def ==(other)
    @position = other.position
    @direction = other.direction
  end

end