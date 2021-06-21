require_relative 'human'

class Mage < Human
  def attack
    puts "#{name} attacks with magic!"
  end

  def to_s
    "#{name} is a mage. #{accessories_to_s}"
  end
end

