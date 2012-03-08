load '../part1.rb'

def assert(text)
  if yield
    puts text+" test ... passed"
  else
    puts "(*) "+text+" test ... failed"
  end
end

assert("Euros testing") do 
  5.euros == 5*1.292
end

assert("Euros testing (in)") do 
  5.euros.in(:rupee) == (5*1.292)/0.019
end

assert("No String Palindrome") do
  not "hola".palindrome?
end

assert("Weird characters String Palindrome") do
  "ho ^l - a% loh".palindrome?
end


assert("Collection palindrome") do
  [1,2,3,2,1].palindrome?
end