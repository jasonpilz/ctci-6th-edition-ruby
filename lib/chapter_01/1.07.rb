# frozen_string_literal: true

module One
  module Seven
    module_function

    def call(input)
      input.transpose.map(&:reverse)
    end
  end
end
