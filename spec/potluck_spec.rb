require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  describe 'initialize' do
  it 'initializes Potluck' do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_instance_of Potluck
  end

  it 'has an agenda' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq("7-13-18")
  end

  it 'has an array of dishes' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.dishes).to eq([])
  end

  it 'is a type of a dish' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
  end

  it 'is a count of the dishes' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes.length). to eq(2)
  end

  describe 'get all categories' do
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer),
    roast_pork = Dish.new("Roast Pork", :entre),
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
  end

  it 'has dishes in appetizers category' do
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer),
    roast_pork = Dish.new("Roast Pork", :entre),
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
  end
end
end
