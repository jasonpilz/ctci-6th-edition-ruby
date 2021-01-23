# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.04'

module One
  class TestFour < Minitest::Test
    def setup
      @cases = {
        'cat'      => false,
        'aaabbb'   => false,
        'aabbaa'   => true,
        'a'        => true,
        'bb'       => true,
        'cccc'     => true,
        'ddddf'    => true,
        'bob'      => true,
        'Tact Coa' => true,
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Four.(input)]
      end
    end
  end
end
