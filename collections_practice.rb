# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.detect do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.is_a?(String) == false
  end
end

# def count_elements(array)
#   array.uniq.each {|word| i = 0
#   array.each {|word2| if word2 == word then i += 1 end}
#   word[:i] = i}
# end

def count_elements(array)

     array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end
