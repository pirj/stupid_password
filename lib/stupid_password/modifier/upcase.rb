class StupidPassword::Modifier::Upcase
  def self.modify password
    password.downcase
  end

  def self.prefix
    ''
  end

  def self.postfix
    'in upper case'
  end
end
