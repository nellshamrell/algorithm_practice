require "ruby_algorithm_koans/version"

module RubyAlgorithmKoans
  def self.bubble_sort(array_to_sort)
    sort_again = true
    while sort_again == true
      sort_again = false

      0.upto(array_to_sort.size - 2) do |index|
        current_val = array_to_sort[index]
        next_val = array_to_sort[index + 1]

        #        unless next_val.nil?
        if current_val > next_val
          array_to_sort[index] = next_val
          array_to_sort[index + 1] = current_val
          sort_again = true
        end
        #        end

        index += 1
        #      puts
        #      puts sort_again
        #      puts array_to_sort
      end
    end

    return array_to_sort
  end

  def self.merge_sort(array)
    # Do the sorting, then merge back together

    # Check that array has more than one element
    return array if array.length <= 1

    # Find middle of array
    mid_index = array.length / 2

    # Split the array at the middle
    left = array.slice(0, mid_index)
    right = array.slice(mid_index, array.length - 1)

    left = merge_sort(left)
    right = merge_sort(right)

    RubyAlgorithmKoans.merge(left, right)
  end

  def self.merge(left, right)
    result = []

    until left.empty? || right.empty?
      result << (left[0] <= right[0] ? left : right).shift
    end

    return result.concat(left).concat(right)
  end

  def self.quick_sort(array)
    # Check if array only has one element.
    return array if array.length <= 1

    # Select pivot
    pivot_index = array.length - 1

    # Create partition lists

    left = []
    right = []

    # Set pivot value
    pivot_value = array[pivot_index]

    # Remove pivot from array, as we don't want to compare it to itself
    array.delete_at(pivot_index)

    # Loop array, comparing elements to pivot value

    array.each do |item|
      if item < pivot_value
        left.push(item)
      else
        right.push(item)
      end
    end

    return quick_sort(left).concat([pivot_value]).concat(quick_sort(right))
  end

  def self.selection_sort(array)
    number_of_iterations = array.length - 1

    number_of_iterations.times do |iteration|
      current_min = iteration

      for i in (iteration + 1)..number_of_iterations
        if array[i] < array[current_min]
          current_min = i
        end
      end

      if current_min != iteration # they need to switch
        array[iteration], array[current_min] = array[current_min], array[iteration]
      end
    end

    array
  end
end
