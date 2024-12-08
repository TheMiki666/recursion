# recursion
Fibonacci and Merge sort

Exercise from Ruby course of The Odin Project

https://www.theodinproject.com/lessons/ruby-recursion

Use what you have learnt about recursion so far to tackle two classic problems that can leverage recursion: Fibonacci and Merge Sort.

Fibonacci
The Fibonacci Sequence, is a numerical sequence where each number is the sum of the two numbers before it. Eg. 0, 1, 1, 2, 3, 5, 8, 13 are the first eight digits in the sequence.

You should already be thinking that perhaps this can be solved iteratively rather than recursively, and you would be correct. Nevertheless generating the sequence recursively is an excellent way to better understand recursion.

You can watch this video from Khan Academy on recursive Fibonacci to understand it further.

Merge sort
A significant part of computer science is dedicated to sorting data. An algorithm which uses the ‘divide and conquer’ approach of recursion is able to reduce a sorting problem to smaller and smaller sub-problems.

Merge sort is one such sorting algorithm, and can be much faster than other algorithms such as bubble sort on the right data sets. Essentially merge sort recurses through an array of unsorted data until it reaches its smallest sub-set, a single item. Of course an array with a single item is considered sorted. Merge sort then merges the single items back together in sorted order. Pretty clever!

#SOLUTIONS EXPLANATION:

HOW I SOLVED THE FIBONACCI PROBLEM

We have implemented not two, but three possible solutions to the PROBLEM
1. The iterative method self.fibs(num) uses just an iterative block. 
I'ts time complexity is O(n)

2. The recursive method self.fibs_rec(num) uses a uses an recursive private function to calculate the Fibbonaci number,
but an iterative block to store it in the matrix.
It's code maybe is the most clear, but also the least efficient, because use an recursive method nested
in a iterative loop (I think its an O(n * log n) method)

3. We have also made a pure recursive method self.fibs_pure_rec(num) to solve the problem.
self.fibs_pure_rec(num) is just a public interface to protect the true (private) pure recursive method:
self.fibs_pure_rec(num, counter, response)
This method uses three arguments: the number, the counter and the response array
The number is given by user thought self.fibs_pure_rec(num)
The other two arguments ara just for recursive internal use
I'ts time complexity is O(log n) (I think!)

HOW I SOLVED THE MERGE SORT PROBLEM
The "static" class MergeSort has two public (static) methods:
 #create_random_array creates a random lineal disordered array (that we will use to try the method)
 #sort_array sorts a lineal disordered array using Merge Sort algorithm
This last method uses 4 private (static) methods to apply the algorithm:
 #to_tree is the first step: is a recursive method with transforms a lineal array in a tree array (each branch has a number, a branch or two branches maximum)
 #is_lineal? determines if an array is lineal or not (branched)
 #merge_sorted_lineal_arrays merged two previously sorted lineal array in another sorted lineal array
 Finally, #to_lineal is another recursive method thet uses #is_lineal? and merge_sorted_lineal_arrays to do the magic:
  - If it finds a lineal branch, it assumes that is already sorted, and just returns it
  - If it finds a ramified branch, it flattens the array one level and calls itself recursively
  - If it finds two branches, calls itself recursively for each separated branch and after that calls #merge_sorted_lineal_arrays to merge both

