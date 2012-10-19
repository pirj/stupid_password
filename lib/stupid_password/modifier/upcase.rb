class StupidPassword::Modifier::Upcase
  def self.modify password
    password.upcase
  end

  def self.prefix
    ''
  end

  def self.postfix
    'in upper case'
  end
end
