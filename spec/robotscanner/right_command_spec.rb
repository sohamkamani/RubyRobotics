require "spec_helper"

describe "RightCommand" do
  let(:cmd) { RightCommand.new}
  let(:max) { Position.new(100,100)}
  
  it "should make a robot turn right" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north, max))).to eq(Robot.new(Position.new(0,0),Direction.east, max))
  end
end