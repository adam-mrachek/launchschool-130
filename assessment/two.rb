name = "Adam"

def hello
  puts "Hello #{name}"
end

some_code = Proc.new { puts "Hello #{name} "}

def hello(code)
  code.call
end

p hello(some_code)