require_relative "lib/Fibonacci"
require_relative "lib/merge_sort.rb"

puts "FIBONACCI"

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

puts "------------"
puts "MERGE SORT"
3.times do
  puts "Disordered array:"
  p my_array = MergeSort.create_random_array(10 + rand(40))
  puts "We order it with Merge-sort algorithm and..."
  p MergeSort.sort_array(my_array)
end