
class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
  
  def in(currency)
    singular_currency = currency.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * 1.0/@@currencies[singular_currency]
    else
      nil
    end
  end
  
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end


class String
  def palindrome?()
    str = self.gsub(/\W+/,'')
    str.downcase!
    return str == str.reverse
  end
end

module Enumerable
  def palindrome?()
    rev = self.reverse
    return rev == self
  end
end


