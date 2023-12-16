def merge_sort(arr)
  # Base case: arrays with 0 or 1 element are already sorted
  return arr if arr.length <= 1

  # Divide the array into two halves
  mid = arr.length / 2
  left_half = arr[0...mid]
  right_half = arr[mid..-1]

  # Conquer: recursively sort the two halves
  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  # Combine: merge the sorted halves
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    # Compare the first elements of each half and take the smaller one
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # Concatenate any remaining elements (one of the arrays might still have elements)
  sorted.concat(left).concat(right)
end

unsorted_array = [3, 1, 4, 1, 5, 9, 2, 6]
sorted_array = merge_sort(unsorted_array)
puts sorted_array.inspect
