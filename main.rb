require_relative "lib/Fibonacci"

puts "Iterative way:"
(1..10).each do |i|
  p "Fibonacci series of number #{i} is: #{Fibonacci.fibs(i)}"
end 

puts "Recursive way:"
(1..10).each do |i|
  p "Fibonacci series of number #{i} is: #{Fibonacci.fibs_rec(i)}"
end 

puts "Pure recursive way:"
(1..10).each do |i|
  p "Fibonacci series of number #{i} is: #{Fibonacci.fibs_pure_rec(i)}"
end 
