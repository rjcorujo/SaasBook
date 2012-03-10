load "../part2.rb"
require "test/unit"

class Part2Test < Test::Unit::TestCase
  def test_simple
    c = CartesianProduct.new([:a,:b,:c], [4,5])
    list = []
    c.each { |elt| list += [elt] }
    assert_equal([[:a,4],[:a,5],[:b,4],[:b,5],[:c,4],[:c,5]],list)
  end
  
  def test_empty_product
    c = CartesianProduct.new([:a,:b], [])
    list = []
    c.each { |elt| list += [elt] }
    assert_equal([],list)
  end
end
