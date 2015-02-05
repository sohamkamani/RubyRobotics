require "spec_helper"

describe "MoveCommand" do
  let(:cmd) { MoveCommand.new}
  let(:max) {Position.new(100,100)}
  
  it "should make a robot move" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north,max))).to eq(Robot.new(Position.new(0,1),Direction.north,max))
  end
end