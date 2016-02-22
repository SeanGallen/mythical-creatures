class Vampire
  def initialize(name, pet= "bat")
    @name = name
    @pet = pet
    @thristy = true
  end
  def name
    @name
  end
  def pet
  @pet
  end
  def thirsty?
    @thristy
  end
  def drink
    @thristy = false
  end
end





