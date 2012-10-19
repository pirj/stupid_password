#encoding: utf-8
class StupidPassword::Base::Name
  MALE_NAMES = %w{alexander alex andrey andrew basil claire vladimir vasily SASHA Александр}
  FEMALE_NAMES = %w{alexandra vera nadejda lubov SASHA Александра}

  def self.guess(password, depth)
    each_guess do |name, guess_description|
      raise StupidPassword::Stupid.new guess_description if name == password
    end

    StupidPassword.modifiers.permutation(depth).each do |modifier_chain|
      each_guess do |name, guess_description|
        modified_password = modifier_chain.inject(name){|passwd, modifier| modifier.modify(passwd)}
        if modified_password == password
          description = modifier_chain.inject(guess_description){|description, modifier| "#{modifier.prefix} #{description} #{modifier.postfix}".strip }
          raise StupidPassword::Stupid.new description
        end
      end
    end
  end

  def self.each_guess
    MALE_NAMES.each{|name| yield name, 'male name' }
    FEMALE_NAMES.each{|name| yield name, 'female name' }
  end
end
