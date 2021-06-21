require_relative 'human'

class Warrior < Human
  def attack
    puts "#{name} attacks with a sword!"
  end

  def to_s
    "#{name} is a warrior. #{accessories_to_s}"
  end
end

