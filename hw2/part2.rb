class CartesianProduct
  include Enumerable
  
  def initialize(l1,l2)
    @list1 = l1
    @list2 = l2
  end
  
  def each
    @list1.each do |value1|
      @list2.each do |value2|
        yield([value1,value2])
      end
    end
  end
end

