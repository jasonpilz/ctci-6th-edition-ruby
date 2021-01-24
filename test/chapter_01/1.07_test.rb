# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.07'

module One
  class TestSeven < Minitest::Test
    def setup
      @cases = {
        [[1, 2, 3,],
         [4, 5, 6,],
         [7, 8, 9 ]] => [[7, 4, 1,],
                         [8, 5, 2,],
                         [9, 6, 3 ]],
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Seven.(input)]
      end
    end
  end
end
