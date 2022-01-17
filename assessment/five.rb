# def full_name
#   yield("Adam")
# end

# full_name { |first, last| puts "My name is #{first} #{last}" }

def full_name
  yield("Adam", "Mrachek")
end

full_name { |name| puts "My name is #{name}"}