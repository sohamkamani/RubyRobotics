require 'spec_helper'
describe 'launch' do


  it "test the launch" do
    
    parser = Parser.new
    allow(Parser).to receive(:new) { parser}
    allow(Kernel).to receive(:gets) { "10 10" }
    expect(parser).to receive(:parse_position).with("10 10")

    app = Application.new
    app.start_test
    
  end

end 

