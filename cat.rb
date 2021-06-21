require_relative 'pet'

class Cat < Pet
  def speak
    puts "#{name} says 'Meow!'"
  end
end

