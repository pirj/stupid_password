#encoding: utf-8
require 'spec_helper.rb'

describe StupidPassword::Modifier do
  it "detects capitalized names" do
    'Alexander'.is_stupid?.should eq "Is that a capitalized male name?"
    'Rnieciunm'.is_stupid?.should eq false
  end
  it "detects downcase names" do
    'sasha'.is_stupid?.should match /Is that a (fe)?male name in lower case\?/
    'rnieciunm'.is_stupid?.should eq false
  end
  it "detects upcase names" do
    'ALEXANDER'.is_stupid?.should eq "Is that a male name in upper case?"
    'RNIECIUNM'.is_stupid?.should eq false
  end

  it "detects names in different layout" do
    'фдучфтвук'.is_stupid?.should eq "Is that a male name typed with different keyboard layout?"
    'Fktrcfylhf'.is_stupid?.should eq "Is that a female name typed with different keyboard layout?"
  end

  it "detects combination of a pair of modifications" do
    StupidPassword.is_stupid?('Фдуч', 2).should eq "Is that a capitalized male name typed with different keyboard layout?"
  end
  
end
