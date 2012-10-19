module StupidPassword

  def self.modifiers
    Modifier.constants.map{|clazz_name|  Modifier.const_get clazz_name }
  end
  
  def is_stupid? password=self, depth = 1
    StupidPassword::Base.constants.each do |clazz_name|
      clazz = Base.const_get clazz_name
      clazz.guess password, depth
    end

    #TODO check with all permutations of modifiers

    false # Probably not so stupid
  rescue Stupid => guessed
    "Is that a #{guessed.message}?"
  end
  
  def self.is_stupid?(password, depth = 1)
    password.extend(StupidPassword).is_stupid?(password, depth)
  end
end

require 'stupid_password/stupid'
require 'stupid_password/version'
require 'stupid_password/base'
require 'stupid_password/modifier'
