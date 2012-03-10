load '../part1.rb'
require "test/unit"

class Part1Tests < Test::Unit::TestCase
  def test_conversion_basic
    assert_equal(5.euros,5*1.292) 
  end  
  
  def test_conversion_in
    assert_equal(5.euros.in(:rupee),(5*1.292)/0.019)
  end
  
  def test_palindrome_false
    assert(! "hola".palindrome?)
  end
  
  def test_palindrome_weird_characters
    assert("ho ^l - a% loh".palindrome?)
  end
  
  def test_palindrome_hash
    assert_nothing_raised({:k1=>1,:k2=>3}.palindrome?)
  end
  
  def test_palindrome_array
    assert([1,2,3,2,1].palindrome?)
  end
  
  def test_palindrome_non_array
    assert(! ((1..3).palindrome?))
  end
end
