def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by { |word| word.length}
end

def swap_elements(array)
  temp_element = array[1]
  array[1] = array[2]
  array[2] = temp_element
  return array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map do |string|
    string[2] = "$"
  end
  return array
end

def find_a(array)
  array.select { |string| string[0] == "a" }
end

def sum_array(array)
  sum = 0 
  array.map do |integer|
    sum = sum + integer
  end
  sum
end

def add_s(array)
  new_array = array.select.with_index { |word,index| word if index != 1 }
  new_array.map do |element|
    element + "s"
  end
  new_array.insert(1, array[1])
end