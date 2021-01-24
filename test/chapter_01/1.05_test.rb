# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.05'

module One
  class TestFive < Minitest::Test
    def setup
      @cases = {
        ['pale', 'ple']   => true,
        ['pales', 'pale'] => true,
        ['pale', 'bale']  => true,
        ['pale', 'bake']  => false,
        ['a', 'abc']      => false,
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Five.(*input)]
      end
    end
  end
end
