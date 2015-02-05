require "spec_helper"
describe "parser" do
  let(:parser) {Parser.new}

  it "should parse boundary position" do
    expect(parser.parse_position("5 5")).to eq(Position.new(5,5))
  end
end