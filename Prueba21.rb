def factorial_recursive(n)
(1..n).inject(:*) || 1
end
p factorial_recursive(6)
def factorial_iterative(n)
  f = 1 
    for i in 1..n; f *= i;end
  f
end
p factorial_iterative(10)
