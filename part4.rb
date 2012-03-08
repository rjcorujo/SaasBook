
class Dessert
  def initialize(name,calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    return @calories < 200
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name,calories,flavor)
    super(name,calories)
    @flavor = flavor
  end
  
  attr_accessor :flavor
  
  def delicious?
    return super unless @flavor == 'black licorice'
    return false
  end
end


#jbean1 = JellyBean.new("jbean1",300,'black licorice')
#jbean2 = JellyBean.new("jbean2",100,'strawberry')

#puts jbean1.delicious?
#puts jbean2.delicious?
#puts jbean1.healthy?
#puts jbean2.healthy?