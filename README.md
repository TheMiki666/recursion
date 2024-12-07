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

SOLVE THE FIBONACCI PROBLEM

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
I'ts time complexity is O(n)


