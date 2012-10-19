require 'spec_helper.rb'

describe StupidPassword::Modifier do
  it "detects capitalized names" do
    'Alexander'.is_stupid?.should eq "Is that a capitalized male name?"
    'Rnieciunm'.is_stupid?.should eq false
  end
  it "detects downcase names" do
    'alexander'.is_stupid?.should eq "Is that a male name in lower case?"
    'rnieciunm'.is_stupid?.should eq false
  end
  it "detects upcase names" do
    'ALEXANDER'.is_stupid?.should eq "Is that a male name in upper case?"
    'RNIECIUNM'.is_stupid?.should eq false
  end

end
