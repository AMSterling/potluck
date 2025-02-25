require 'rspec'
require './lib/dish'

RSpec.describe Dish do
  describe 'initialize' do
  it 'exists' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish).to be_instance_of(Dish)
  end

  it 'is a starter' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish.name).to eq("Couscous Salad")
  end

  it 'is has a catgory' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish.category).to eq(:appetizer)
  end
end
end
