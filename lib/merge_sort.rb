class MergeSort 
  def self.create_random_array(size = 25, min_value=1, max_value=100)
    response=[]
    size.times {response << rand(max_value - min_value) + min_value}
    response
  end

  # This method splits a lineal array in a tree of arrays
  def self.to_tree(lineal_array)
    size = lineal_array.size
    if size == 1
      Array.new(1, lineal_array[0])
    else
      Array.new(1, to_tree(lineal_array[0..(size/2 - 1)])) << to_tree(lineal_array[size/2..size])
    end
  end

  # Merged two sorted lineal arrays, in a sorted lineal array
  def self.merge_sorted_lineal_arrays(array1, array2)
    resulting_array=[]
    while array1.size!=0 || array2.size!=0
      if array1.size==0
        resulting_array.push(array2.shift())
      elsif array2.size==0
        resulting_array.push(array1.shift())
      elsif array1[0] <= array2[0]
        resulting_array.push(array1.shift())
      else
        resulting_array.push(array2.shift())
      end
    end
    resulting_array
  end

  # Determines weather an array is lineal or not (with branches)
  def self.is_lineal?(array)
    array.each do |element|
      return false if element.kind_of?(Array)
    end
    return true
  end

  # This method transforms a tree two-branched array in a lineal sorted array
  def self.to_lineal(tree_array, lineal_array)
    

  end
end