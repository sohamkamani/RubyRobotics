require "spec_helper"

describe "LeftCommand" do
  let(:cmd) { LeftCommand.new}
  let(:max) {Position.new(100,100)}
  
  it "should make a robot turn left" do
    expect(cmd.execute(Robot.new(Position.new(0,0),Direction.north,max))).to eq(Robot.new(Position.new(0,0),Direction.west,max))
  end
end