require "spec_helper"

describe "RightCommand" do
  let(:cmd) { RightCommand.new}
  
  it "should make a robot turn right" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north))).to eq(Robot.new(Position.new(0,0),Direction.east))
  end
end