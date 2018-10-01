class Sloth
  attr_reader :name, :foods, :drinks

  def initialize(name)
    @name = name
    @foods = []
    @drinks = {}
  end

  def eat(food)
    @foods << food
  end

end
