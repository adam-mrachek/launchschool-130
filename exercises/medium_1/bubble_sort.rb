require 'pry'

def bubble_sort!(array)
  starting_position = 0

  loop do
    swapped = false
    index = 0

    0.upto(array.length - 2) do |index|
      if block_given?
        next if yield(array[index], array[index + 1])
      else
        next if array[index] < array[index + 1]
      end

      array[index], array[index + 1] = array[index + 1], array[index]
      swapped = true
      index += 1
    end

    break if swapped == false
  end

  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)