require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a Dealership
  end

  describe '#init' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    it 'has readable attribute @brand' do
      expect(dealership.brand).to eq('Acme Auto')
    end
    it 'has readable attribute @address' do
      expect(dealership.address).to eq('123 Main Street')
    end
  end

  describe '#inventory_count' do
    it '#can count cars' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      inventory = []
      expect(dealership.inventory_count).to eq(0)
    end
  end

  describe '#add_car' do
    it 'can add cars to inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      inventory = []
      expect(dealership.inventory_count).to eq(0)
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      inventory = [car_1, car_2]
      expect(dealership.inventory).to eq([car_1, car_2])
      expect(dealership.inventory_count).to eq(2)
    end
  end

  describe '#has_inventory?' do
    it 'can check inventory for cars' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      dealership.has_inventory?
      expect(dealeship.has_inventory?).to eq(false)
    end
  end
  describe '#cars_by_make' do
    it '#groups cars by make' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      dealership.has_inventory?
      dealership.cars_by_make("Toyota")
      dealership.cars_by_make("Ford")
      dealership.total_value
      dealership.details
    end
  end
end
