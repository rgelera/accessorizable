require_relative 'pet'

class Dog < Pet
  def speak
    puts "#{name} says 'Woof!'"
  end
end

