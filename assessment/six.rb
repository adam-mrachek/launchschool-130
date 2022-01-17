def introduce(&greeting)
  greeting.call
end

introduce { puts "Hello my name is Adam."}