require "spec_helper"

describe "Direction" do
  let(:direction1) { Direction.east}
  let(:direction2) { Direction.east}
  let(:direction3) { Direction.east}

  it "should turn left" do
    expect(direction1.left).to eq(Direction.north)
  end

  it "should turn left twice and thus face west" do
    direction1.left
    expect(direction1.left).to eq(Direction.west)
  end

  it "should turn left thrice and thus face south" do
    direction1.left
    direction1.left
    expect(direction1.left).to eq(Direction.south)
  end

  it "should turn right once, thus facing south" do
    expect(direction1.right).to eq(Direction.south)
  end

  it "should turn right twice and thus face west" do
    direction1.right
    expect(direction1.right).to eq(Direction.west)
  end

  it "should turn right thrice and thus face north" do
    direction1.right
    direction1.right
    expect(direction1.right).to eq(Direction.north)
  end

  it "should turn left four times and thus return to original position" do
    direction1.left
    direction1.left
    direction1.left
    expect(direction1.left).to eq(Direction.east)
  end

  it "should turn right four times and thus return to original position" do
    direction1.right
    direction1.right
    direction1.right
    expect(direction1.right).to eq(Direction.east)
  end

  describe 'Equality' do
    it "follows reflexivity" do
      expect(direction1).to eq(direction1)
    end

    it "follows symmetry" do
      expect(direction1==direction2).to eq(direction2==direction1)
    end

    it "follows transitivity" do
      expect(direction1==direction2 && direction2==direction3).to eq(direction1==direction3)
    end
  end
end
