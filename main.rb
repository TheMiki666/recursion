require_relative "lib/Fibonacci"
require_relative "lib/merge_sort.rb"

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

array1 = [1,3,5,8,12]
array2 = [0,2,3,4,6,7,8,9,10,11]
p merged_array = MergeSort.merge_sorted_lineal_arrays(array1, array2)

puts MergeSort.is_lineal?(array1)
puts MergeSort.is_lineal?(array2)
puts MergeSort.is_lineal?(merged_array)
puts MergeSort.is_lineal?([0,2,3,[4,6,7,8],9,10,11])
puts MergeSort.is_lineal?([0,2,3,[4],6,7,8,9,10,11])
puts MergeSort.is_lineal?([1,[2]])