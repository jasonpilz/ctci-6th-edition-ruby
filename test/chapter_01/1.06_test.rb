# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.06'

module One
  class TestSix < Minitest::Test
    def setup
      @cases = {
        'abcdefg'     => 'abcdefg',
        'aabcccccaaa' => 'a2b1c5a3',
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Six.(input)]
      end
    end
  end
end
