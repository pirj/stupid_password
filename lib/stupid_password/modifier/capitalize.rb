class StupidPassword::Modifier::Capitalize
  def self.modify password
    password.capitalize
  end

  def self.prefix
    'capitalized'
  end

  def self.postfix
    ''
  end
end
