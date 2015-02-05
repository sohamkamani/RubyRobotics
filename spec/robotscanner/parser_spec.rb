require "spec_helper"
describe "parser" do
  let(:parser) {Parser.new}

  it "should parse boundary position" do
    expect(parser.parse_position("5 5")).to eq(Position.new(5,5))
  end

  it "should parse a robot" do
    expect(parser.parse_robot("1 2 NORTH")).to eq(Robot.new(Position.new(1,2),Direction.north))
  end

  it "should parse a series of commands" do
    commands = parser.parse_commands("MOVE LEFT MOVE")
    expect([commands[0].class,commands[1].class,commands[2].class]).to eq([MoveCommand,LeftCommand,MoveCommand])
  end
end
