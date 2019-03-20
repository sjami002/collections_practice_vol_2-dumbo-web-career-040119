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

def count_elements(array)

     array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map{|key, val|
    if i.values[0] == key
      then merged << i.merge(val)end}}
      merged
end

def find_cool(cool)
  cool.select {|i| i.any? {|key, val| val == "cool"}}
end

# def organized_schools(schools)
#   cities = {}
#   schools.each {|k, v| cities[v[:location]] = []}
#   cities.each {|k, v| schools.each {|k1, v1| if k == v1[:location]
#     then v << k1 end}}
# end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
