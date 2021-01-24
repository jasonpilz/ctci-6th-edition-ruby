# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.09'

module One
  class TestNine < Minitest::Test
    def setup
      @cases = {
        ['waterbottle', 'erbottlewat'] => true,
        ['waterbottle', 'waters']      => false,
        ['', '']                       => false,
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Nine.(*input)]
      end
    end
  end
end
