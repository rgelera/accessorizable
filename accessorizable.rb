module Accessorizable
  def add_accessory(acc)
    @accessories << acc 
  end

  def remove_accessory(acc)
    @accessories.delete(acc)
  end

  def accessories_to_s
    output = "Currently holding "
    output << "#{@accessories[0...-1] * ", "}, and #{@accessories.last}."
    output
  end
end