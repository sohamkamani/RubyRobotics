require "spec_helper"

describe "Position" do
  let(:position1) {Position.new(0,0)}
  let(:position2) {Position.new(0,1)}

  it "should change in the required direction , north" do
    expect(position1.move(Direction.north)).to eq(position2)
  end

  it "should change in the required direction , east" do
    expect(position1.move(Direction.east)).to eq(Position.new(1,0))
  end

  it "should change in the required direction , south" do
    expect(position1.move(Direction.south)).to eq(Position.new(0,-1))
  end
end
