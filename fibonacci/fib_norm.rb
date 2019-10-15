# fibonacci

def fibonacci(n)
# if n = 1, puts 1
  if n == 1
    1
# if n = 2, puts 1
  elsif n == 2
    1
# if n>2, puts sum of previous 2 values
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end
# print output of n
puts fibonacci(6)


