class StupidPassword::Base::Name
  MALE_NAMES = %w{alexander alex andrey andrew basil claire vladimir vasily SASHA}
  FEMALE_NAMES = %w{alexandra vera nadejda lubov SASHA}

  def self.guess password
    each_guess do |name, guess_description|
      raise StupidPassword::Stupid.new guess_description if name == password
    end

    StupidPassword.modifiers.each do |modifier|
      each_guess do |name, guess_description|
        raise StupidPassword::Stupid.new "#{modifier.prefix} #{guess_description} #{modifier.postfix}".strip if modifier.modify(name) == password
      end
    end
  end

  def self.each_guess
    MALE_NAMES.each{|name| yield name, 'male name' }
    FEMALE_NAMES.each{|name| yield name, 'female name' }
  end
end
