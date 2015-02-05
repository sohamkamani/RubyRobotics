require "spec_helper"

describe "LeftCommand" do
  let(:cmd) { LeftCommand.new}
  
  it "should make a robot turn left" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north))).to eq(Robot.new(Position.new(0,0),Direction.west))
  end
end