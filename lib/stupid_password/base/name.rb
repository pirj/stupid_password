class StupidPassword::Base::Name
  MALE_NAMES = %w{alexander alex andrey andrew basil claire vladimir vasily}
  FEMALE_NAMES = %w{alexandra vera nadejda lubov}

  def self.guess password
    raise StupidPassword::Stupid.new 'male name' if MALE_NAMES.include? password
    raise StupidPassword::Stupid.new 'female name' if FEMALE_NAMES.include? password
  end
end