require "spec_helper"

describe "MoveCommand" do
  let(:cmd) { MoveCommand.new}
  
  it "should make a robot move" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north))).to eq(Robot.new(Position.new(0,1),Direction.north))
  end
end