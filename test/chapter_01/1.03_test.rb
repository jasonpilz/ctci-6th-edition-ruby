# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.03'

module Three
  class TestSubject < Minitest::Test
    def setup
      @cases = {
        'Mr John Smith   ' => 'Mr%20John%20Smith',
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Subject.(input)]
      end
    end
  end
end
