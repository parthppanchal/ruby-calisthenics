class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  attr_accessor :name, :calories
  def healthy?
    self.calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    super(flavor + " jelly bean", 5)
  end
  attr_accessor :flavor
  def delicious?
    self.name.split[0] != 'licorice'
  end
end
