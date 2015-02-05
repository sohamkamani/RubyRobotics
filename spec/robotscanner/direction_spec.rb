require "spec_helper"

describe "Direction" do
	let(:direction1) { Direction.east}
	let(:direction2) {Direction.north}

	it "should turn left" do
		expect(direction1.left).to eq(Direction.north)
	end

	it "should turn left twice and thus face west" do
		direction1.left
    expect(direction1.left).to eq(Direction.west)		
	end
end