class Dessert

  attr :name, true
  attr :calories, true

  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end
  
  def healthy?
    # YOUR CODE HERE
    calories <= 200
  end
  
  def delicious?
    # YOUR CODE HERE
    true
  end
end

class JellyBean < Dessert

  attr :flavor, true

  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    super(name,calories)
    @flavor = flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    @flavor == 'black licorice' ? false : true
  end
end
