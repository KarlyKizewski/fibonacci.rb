#fibonacci iterative solution
require 'benchmark'

def iterative_fib(n)
  a = 0
  b = 1

  #compute fibonacci number in desired position
  n.times do
    temp = a
    a = b
    # add previous 2 nums in sequence
    b = temp + b
  end

  return a
end

# puts 15 fibonacci nums in seq
#35.times do |n|
  #n = 35
  #result = iterative_fib(35)
  #puts result
#end
puts iterative_fib(35)

n = 35
Benchmark.bm do |x|
  x.report("iterative_fib")  { iterative_fib(n)  }
end
