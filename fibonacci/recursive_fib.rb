# take fibonacci
require 'benchmark'
# make recursive 
def recursive_fib(n)
  #error check
  if n < 0 then
    raise ArgumentError, "Number must be positive integer."
  end
  #terminating base cases
  return [] if n == 0
  return [0] if n == 1
  return [0,1] if n == 2
  #recursion
  seq = recursive_fib(n -1)
  #recursive function
  seq << seq[-2] + seq[-1]

  return seq
end

puts recursive_fib(35)

n = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
end