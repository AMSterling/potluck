class Potluck
  attr_reader :date, :dishes, :category

  def initialize (date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end
end
