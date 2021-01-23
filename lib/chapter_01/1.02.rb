# frozen_string_literal: true

module Two
  module Subject
    module_function

    # Initial ruby solution
    #
    def call(a, b)
      return false if a.size != b.size
      return true if a == b

      a.chars.sort == b.chars.sort
    end

    # Optimize for efficiency
    #
    # Complexity
    #  - Time:  O(n)
    #  - Space: O(1)
    #
    def alternate_1(a, b)
      return false if a.size != b.size
      return true if a == b

      # Get the ASCII char set with initial zeroed count
      counts = (?!..?~).map { |c| [c, 0] }.to_h

      a.each_char { |c| counts[c] += 1 }

      b.each_char.with_object(true) do |c|
        counts[c] -= 1
        return false if counts[c].negative?
      end
    end
  end
end
