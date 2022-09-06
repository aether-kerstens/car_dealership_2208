require './lib/car'
class Dealership
  attr_reader :brand, :address, :inventory

  def initialize(brand, address)
    @brand = brand
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.length == 0
      false
    else
      true
    end
  end

  # def cars_by_make(make)
  #   inventory.map{|car| car.make}
  # end

  def total_value
    inventory.sum{|car| car.total_cost}
  end

  def details
    @inventory
  end
end
