def foo
  name = "John"
  yield
end

introduction = foo { puts "My name is #{name}" }