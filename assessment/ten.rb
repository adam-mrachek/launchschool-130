def timer
  raise RuntimeError.new('no block given') unless block_given?

  start = Time.now
  10000000.times do
    yield
  end
  after = Time.now

  after - start
end

p timer { |x| i = x.to_s } # 1.731092053 seconds

timer # No block given (RuntimeError)