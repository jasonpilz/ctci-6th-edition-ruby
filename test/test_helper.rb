# frozen_string_literal: true

require 'simplecov'

simple_cov_formatters = []
simple_cov_formatters << SimpleCov::Formatter::HTMLFormatter

SimpleCov.start do
  minimum_coverage 100
  refuse_coverage_drop

  add_filter '/test/'

  add_group 'Ch 1', 'lib/chapter_01'

  formatter SimpleCov::Formatter::MultiFormatter.new simple_cov_formatters
end

require 'minitest/autorun'
