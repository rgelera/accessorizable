require 'minitest/autorun'
require_relative '../warrior'
require_relative '../mage'

class TestAccessorizable < Minitest::Test
  def test_create_warrior_name
    warrior = Warrior.new("warrior a")
    assert_equal(warrior.name, "warrior a")
  end

  def test_warrior_speak
    warrior = Warrior.new("warrior a")
    assert_output(/warrior a says 'Hello!'/) { warrior.speak }
  end

  def test_warrior_add_accessory
    warrior = Warrior.new("warrior a")
    warrior.add_accessory("necklace")
    assert_equal("necklace", warrior.accessories.first)
  end

  def test_mage_remove_accessory_to_empty
    mage = Mage.new("mage a")
    mage.add_accessory("necklace")
    mage.remove_accessory("necklace")
    assert_empty(mage.accessories)
  end

  def test_mage_remove_accessory
    mage = Mage.new("mage a")
    mage.add_accessory("ring")
    mage.add_accessory("necklace")
    mage.add_accessory("hat")
    mage.remove_accessory("necklace")
    assert_equal(["ring", "hat"], mage.accessories)
  end

  def test_mage_to_s
    mage = Mage.new("mage a")
    mage.add_accessory("necklace")
    mage.add_accessory("ring")
    mage.add_accessory("hat")
    assert_equal("mage a is a mage. Currently holding necklace, ring, and hat.", mage.to_s)
  end

end