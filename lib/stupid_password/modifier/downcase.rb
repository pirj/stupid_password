class StupidPassword::Modifier::Downcase
  def self.modify password
    password.downcase
  end

  def self.prefix
    ''
  end

  def self.postfix
    'in lower case'
  end
end
