#encoding: utf-8

require 'stupid_password'
class StupidPassword::Modifier::KeyboardLayout
  def self.modify password
    english_layout = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM`[];\',./\\{}:"<>?@#$%^&|'
    russian_layout = 'йцукенгшщзфывапролдячсмитьЙЦУКЕНГШЩЗФЫВАПРОЛДЯЧСМИТЬёхъжэбю.ХЪЖЭБЮ,"№;%:?/'
    password.tr(english_layout + russian_layout, russian_layout + english_layout)
  end

  def self.prefix
    ''
  end

  def self.postfix
    'typed with different keyboard layout'
  end
end