require 'minitest/autorun'
require_relative '../accessorizable'

class TestAccessorizable < Minitest::Test
  include Accessorizable

  def test_add_accessory
    @accessories = []
    add_accessory("necklace")
    assert_equal("necklace", @accessories.first)
  end

  def test_remove_accessory
    @accessories = []
    add_accessory("necklace")
    remove_accessory("necklace")
    assert(@accessories.empty?)
  end

  def test_accessories_to_s
    @accessories = []
    add_accessory("earring")
    add_accessory("ring")
    add_accessory("hat")
    assert_equal("Currently holding earring, ring, and hat.", accessories_to_s)
  end
end