require "spec_helper"

describe "Position" do
  let(:position1) {Position.new(0,0)}
  let(:position2) {Position.new(0,1)}
  let(:direction) {Direction.north}

  it "should change in the required direction" do
    expect(position1.move(direction)).to eq(position2)
  end
end
