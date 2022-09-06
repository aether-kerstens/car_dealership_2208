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
end
