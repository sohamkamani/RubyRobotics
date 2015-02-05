#starts the calculator
class Application

  def initialize
    @robots = []
  end

  def start

    parser = Parser.new 

    max_bound_position_string = gets.chomp
    max_bound = parser.parse_position
     
     begin
        robot_command = gets.chomp
        robot = parser.parse_robot(robot_command)
        command_string = gets.chomp
        commands = parser.parse_commands(command_string)

        commands.each do |command|
          command.execute(robot)
        end
        @robots.push(robot)

      end while input != 'exit'

      @robots.each do |robot|
        puts robot.to_s
      end
    end


    def start_test
      parser = CalculatorParser.new
      input = Kernel.gets.chomp
      cmd = parser.parse(input)      
    end


  end
