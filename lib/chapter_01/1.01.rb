# frozen_string_literal: true

module One
  module Subject
    module_function

    CHAR_SET_SIZE = 128

    # Using a hash to track seen elements
    #
    # Complexity
    #  - Time:  O(n)
    #  - Space: O(1)
    #
    def call(str)
      return false if str.size > CHAR_SET_SIZE

      str.each_char.with_object([{}, true]) do |char, (hsh, _)|
        hsh[char] ? (return false) : hsh[char] = true
      end.last
    end

    # Create hash with a count for each element, verify they are all 1.
    def alternate_1(str)
      cnts =
        str.chars.inject(Hash.new(0)) { |hsh, c| hsh[c] += 1; hsh }.values.uniq

      cnts.length == 1 && cnts.first == 1
    end

    # Comparing string to strings' uniq chars
    def alternate_2(str)
      str.chars.uniq.size == str.size
    end
  end
end
