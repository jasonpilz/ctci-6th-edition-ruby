# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.01'

module One
  class TestSubject < Minitest::Test
    def setup
      @cases = {
        "a"                          => true,
        "asdf"                       => true,
        "abcdefghijklmnopqrstuvwxyz" => true,
        "asdffjkl"                   => false,
        "aa"                         => false,
        "jkjk"                       => false,
      }
    end

    def test_acceptance
      @cases.each_with_index do |(input, expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Subject.(input)]
        assert_equal [c, expectation], [c, Subject.alternate_1(input)]
        assert_equal [c, expectation], [c, Subject.alternate_2(input)]
      end
    end
  end
end
