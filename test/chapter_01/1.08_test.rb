# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.08'

module One
  class TestEight < Minitest::Test
    def setup
      @cases = {
        [[1, 2, 3],
         [0, 5, 6],
         [7, 8, 9],
         [2, 9, 9]] => [[0, 2, 3],
                        [0, 0, 0],
                        [0, 8, 9],
                        [0, 9, 9]]
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Eight.(input)]
      end
    end
  end
end
