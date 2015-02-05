require "spec_helper"

describe "Direction" do
	let(:direction1) { Direction.east}

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
end