require "spec_helper"

describe "Robot" do
  let(:robot1) {Robot.new(Position.new(5,5),Direction.north,Position.new(100,100))}
  let(:robot2) {Robot.new(Position.new(5,5),Direction.north,Position.new(100,100))}
  let(:robot3) {Robot.new(Position.new(5,5),Direction.north,Position.new(100,100))}

  it "should be able to turn right" do
    expect(robot1.turn_right).to eq(Robot.new(Position.new(5,5),Direction.east,Position.new(100,100)))
  end

  it "should be able to turn left" do
    expect(robot1.turn_left).to eq(Robot.new(Position.new(5,5),Direction.west,Position.new(100,100)))
  end

  it "should be able to move" do
    expect(robot1.move).to eq(Robot.new(Position.new(5,6),Direction.north,Position.new(100,100)))
  end

  it "should be represented as a string" do
    expect(robot1.to_s).to eq("5 5 NORTH")
  end

  describe 'Equality' do
    it "follows reflexivity" do
      expect(robot1).to eq(robot1)
    end

    it "follows symmetry" do
      expect(robot1==robot2).to eq(robot2==robot1)
    end

    it "follows transitivity" do
      expect(robot1==robot2 && robot2==robot3).to eq(robot1==robot3)
    end
  end

end