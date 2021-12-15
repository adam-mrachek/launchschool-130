def my_method(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

my_method(birds) do |_, _, *raptors|
  raptors
end