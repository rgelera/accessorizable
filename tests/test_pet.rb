require 'minitest/autorun'
require_relative '../dog'
require_relative '../cat'

class TestAccessorizable < Minitest::Test
  def test_create_pet_name
    winston = Dog.new("winston")
    assert_equal(winston.name, "winston")
  end

  def test_dog_speak
    winston = Dog.new("winston")
    assert_output(/winston says 'Woof!'/) { winston.speak }
  end

  def test_no_accessories
    leo = Cat.new("leo")
    refute(leo.respond_to?('accessories'))
  end 

  def test_not_accessorizable
    winston = Dog.new("winston")
    refute(winston.respond_to?('add_accessory'))
  end
end