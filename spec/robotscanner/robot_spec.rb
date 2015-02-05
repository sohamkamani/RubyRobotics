require "spec_helper"

describe "Robot" do
  let(:robot1) {Robot.new(Position.new(5,5),Direction.north)}
  let(:robot2) {Robot.new(Position.new(5,5),Direction.east)}

  it "should be able to turn" do
    expect(robot1.turn_right).to eq(robot2)
  end
end