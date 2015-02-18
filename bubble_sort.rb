class BubbleSort
  def sort(numbers)
    numbers.each_with_index do |num, index|
      neighbor_index = index + 1
      neighbor = numbers[neighbor_index]

      if !neighbor.nil? && num > neighbor
        # puts "need to swap #{num} with #{neighbor}"
        swap(numbers,index, neighbor_index)
      end
    end
    numbers
  end

  def swap(numbers, index1, index2)
    # get the first value
    # get the second value
    # put the first value in the second position
    # put the second value in the first position

    v1 = numbers[index1]
    v2 = numbers[index2]

    numbers[index2] = v1
    numbers[index1] = v2

    numbers
  end
end
