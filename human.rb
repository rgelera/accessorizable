require_relative 'accessorizable'

class Human
  include Accessorizable
  attr_reader :name, :accessories

  def initialize(name)
    @name = name
    @accessories = []
  end

  def speak
    puts "#{name} says 'Hello!'"
  end
end

