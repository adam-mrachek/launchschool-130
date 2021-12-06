def step(start_value, end_value, step_value)
  value = start_value

  while value <= end_value do
    yield(value)
    value += step_value
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }