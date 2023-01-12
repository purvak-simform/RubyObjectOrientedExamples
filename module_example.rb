# ruby module_example.rb
module Addressable
  def address1
    puts 'I am in module Addressable'
  end
end

module Imageable
  def avatar_name
    puts 'I am in module Imageable'
  end
end

class Organisation
  include Addressable
  include Imageable
end

class Student
  include Addressable
  include Imageable
end

obj1 = Organisation.new
obj1.address1
obj1.avatar_name
