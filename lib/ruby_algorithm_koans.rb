require "ruby_algorithm_koans/version"

module RubyAlgorithmKoans
  def self.bubble_sort(array_to_sort)

    sort_again = true
    while sort_again == true
      index = 0
      sort_again = false

      while index < array_to_sort.length
        current_val = array_to_sort[index]
        next_val = array_to_sort[index + 1]

        unless next_val.nil?

          if current_val > next_val
            array_to_sort[index] = next_val
            array_to_sort[index + 1] = current_val
            sort_again = true
          end
        end

        index += 1
      end
    end

    return array_to_sort
  end
end
