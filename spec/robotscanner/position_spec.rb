require "spec_helper"

describe "Position" do
  let(:position1) {Position.new(0,0)}
  let(:position2) {Position.new(0,0)}
  let(:position3) {Position.new(0,0)}
  let(:max) {Position.new(100,100)}

  it "should change in the required direction , north" do
    expect(position1.move(Direction.north,max)).to eq(Position.new(0,1))
  end

  it "should change in the required direction , east" do
    expect(position1.move(Direction.east,max)).to eq(Position.new(1,0))
  end

  it "should change in the required direction , south" do
    expect(position1.move(Direction.south,max)).to eq(Position.new(0,0))
  end

  it "should change in the required direction , west" do
    expect(position1.move(Direction.west,max)).to eq(Position.new(0,0))
  end

  it "should be represented as a string" do
    expect(position1.to_s).to eq("0 0")
  end

  describe 'Equality' do
    it "follows reflexivity" do
      expect(Position.new(0,0)).to eq(Position.new(0,0))
    end

    it "follows symmetry" do
      expect(position1==position2).to eq(position2==position1)
    end

    it "follows transitivity" do
      expect(position1==position2 && position2==position3).to eq(position1==position3)
    end
  end
end
