# frozen_string_literal: true

module Three
  module Subject
    module_function

    def call(input)
      input.strip.gsub(' ', '%20')
    end
  end
end
