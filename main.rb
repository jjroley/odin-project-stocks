def stock_picker(days)
  max_diff = -Float::INFINITY
  indices = []
  for i in (0...(days.length - 1))
    for j in ((i + 1)...days.length)
      if days[j] - days[i] > max_diff
        max_diff = days[j] - days[i]
        indices = [i, j]
      end
    end
  end
  indices
end

def eq(a, b)
  raise "#{a} does not equal #{b}" if a != b
  puts "Test passed: #{a}, #{b}"
end

eq(stock_picker([17,3,6,9,15,8,6,1,10]), [1, 4])
eq(stock_picker([1,2,3,4,5,20,6,7,8,9]), [0, 5])
eq(stock_picker([10,9,8,7,6,5,4,3,2,1]), [0, 1])
eq(stock_picker([40,5,19,59,44,16,2,3]), [1, 3])
eq(stock_picker([2,2,3,4,5,6,7,1,9]),    [7, 8])