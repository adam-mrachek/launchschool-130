p [2, 3, 5].inject(1, &:+)
p [2, 3, 5].inject { |total, num| num + num }