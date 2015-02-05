class Parser

  def parse_position(command_string)
    coordinates = command_string.split(" ")
    Position.new(coordinates[0].to_i,coordinates[1].to_i)
  end
  
  
end