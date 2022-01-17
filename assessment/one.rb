require 'pry'

def iterate(arr)
  arr.each do |element|
    # binding.pry
    counter += 1 if element == 0
  end
end

def count_zeros(arr)
  counter = 0
  for element in arr
    iterate(arr)
  end
  counter
end

puts count_zeros([1, 2, 0, 3, 0, 4])