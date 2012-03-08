
def combine_anagrams(input)
  groups = {}
  input.each { |str| 
     key = str.downcase.chars.sort.join
     groups[key] = groups[key] != nil ? groups[key] + [str] : [str]
  }
  return groups.values
end


#puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )
