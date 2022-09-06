class Dealership

  attr_reader :brand, :address, :inventory

  def initialize(brand, address)
    @brand = brand
    @address = address
    @inventory = []
  end

  def inventory
    puts @inventory
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end
end
