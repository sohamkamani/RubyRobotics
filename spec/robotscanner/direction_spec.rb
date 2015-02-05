require "spec_helper"

describe "Direction" do
	let(:direction1) { Direction.east}
	let(:direction2) {Direction.north}

	it "should turn left" do
		expect(direction1.left).to eq(direction2)
	end
end