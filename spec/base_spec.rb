require 'spec_helper.rb'

describe StupidPassword::Base do
  it "detects names" do
    'alexander'.is_stupid?.should eq "Is that a male name?"
    'rnieciunm'.is_stupid?.should eq false
  end
end
