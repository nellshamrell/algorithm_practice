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
      puts 
      puts sort_again
      puts array_to_sort
      end
    end

    return array_to_sort
  end
end
