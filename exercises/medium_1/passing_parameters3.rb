items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*non_grains, grains|
  puts non_grains.join(', ')
  puts grains
end

gather(items) do |fruits, *veggies, grains|
  puts fruits
  puts veggies.join(", ")
  puts grains
end

gather(items) do |fruit, *not_fruit|
  puts fruit
  puts not_fruit.join(", ")
end

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}."
end