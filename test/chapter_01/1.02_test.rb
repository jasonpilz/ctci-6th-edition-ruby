# frozen_string_literal: true

require_relative '../test_helper'
require 'chapter_01/1.02'

module Two
  class TestSubject < Minitest::Test
    def setup
      @cases = {
        ["this", "his"]            => false,
        ["abb", "abb"]             => true,
        ["abb", "bab"]             => true,
        ["something", "thingsome"] => true,
        ["dusty", "musty"]         => false,
      }
    end

    def test_acceptance
      @cases.each_with_index do |((a, b), expectation), idx|
        c = "case ##{idx+1}"

        assert_equal [c, expectation], [c, Subject.(a, b)]
        assert_equal [c, expectation], [c, Subject.alternate_1(a, b)]
      end
    end
  end
end
