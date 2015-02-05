require "spec_helper"

describe "Robot" do
  let(:robot1) {Robot.new(Position.new(5,5),Direction.north)}
  let(:robot2) {Robot.new(Position.new(5,5),Direction.east)}

  it "should be able to turn right" do
    expect(robot1.turn_right).to eq(Robot.new(Position.new(5,5),Direction.east))
  end

  it "should be able to turn left" do
    expect(robot1.turn_left).to eq(Robot.new(Position.new(5,5),Direction.west))
  end

  it "should be able to move" do
    expect(robot1.turn_left).to eq(Robot.new(Position.new(5,5),Direction.west))
  end

end