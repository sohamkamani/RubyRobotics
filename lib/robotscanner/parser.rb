class Parser

  def parse_position(command_string)
    coordinates = command_string.split(" ")
    Position.new(coordinates[0].to_i,coordinates[1].to_i)
  end

  def parse_robot(command_string)
    robot_props = command_string.split(" ")
    if(robot_props[2]=="NORTH")
      robot = Robot.new(Position.new(robot_props[0].to_i,robot_props[1].to_i),Direction.north)
    elsif robot_props[2] == "SOUTH"
      robot = Robot.new(Position.new(robot_props[0].to_i,robot_props[1].to_i),Direction.south)
    elsif robot_props[2] == "EAST"
      robot = Robot.new(Position.new(robot_props[0].to_i,robot_props[1].to_i),Direction.east)
    elsif robot_props[2] == "WEST"
      robot = Robot.new(Position.new(robot_props[0].to_i,robot_props[1].to_i),Direction.west)
    end
    return robot
  end

  def parse_commands(command_string)
    command_collection = []
    commands = command_string.split
    commands.each do |command|
      if command == "MOVE"
        command_collection.push(MoveCommand.new)
      elsif command == "RIGHT"
        command_collection.push(RightCommand.new)
      elsif command == "LEFT"
        command_collection.push(LeftCommand.new)
      end
    end
    return command_collection
  end

end
