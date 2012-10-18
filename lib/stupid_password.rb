module StupidPassword

  def is_stupid? password=self
    StupidPassword::Base.constants.each do |clazz_name|
      clazz = Base.const_get clazz_name
      clazz.guess password
    end

    #TODO check with all permutations of modifiers

    false # Probably not so stupid
  rescue Stupid => guessed
    "Is that a #{guessed.message}?"
  end
end

require 'stupid_password/stupid'
require 'stupid_password/version'
require 'stupid_password/base'
require 'stupid_password/modifier'
