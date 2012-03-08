#testing git

def palindrome?(string)
  str = string.gsub(/\W+/,'')
  str.downcase!
  return str == str.reverse
end

def count_words(string)
  words = string.downcase.scan(/\w+/)
  map = {}
  words.each {|s| map[s] = map[s] != nil ? map[s] + 1 : 1}
  return map
end
