def find_second_largest(arr)
  return nil if arr.empty?  # Return nil if the array is empty

  return arr[0] if arr.size == 1
  
  largest = arr[0]
  second_largest = nil
  
  arr.each do |num|
    if num > largest
      second_largest = largest
      largest = num
    elsif num < largest && (second_largest.nil? || num > second_largest)
      second_largest = num
    end
  end
  
  second_largest
end

# Example usage:
array = [3, 8, 1, 5, 2, 9, 7]
puts find_second_largest(array)