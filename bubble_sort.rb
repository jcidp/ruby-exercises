def bubble_sort(array)
  (array.length - 1).times do |i|
    array[0..array.length - i - 2].each_index do |j|
      array[j], array[j+1] = array[j+1], array[j] if array[j] > array[j+1]
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])
