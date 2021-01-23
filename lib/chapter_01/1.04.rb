# frozen_string_literal: true

module One
  module Four
    module_function

    def call(input)
      counts = input
        .delete(' ')
        .downcase
        .chars
        .reduce(Hash.new(0)) { |hsh, c| hsh[c] += 1; hsh }
        .values

      counts.select(&:odd?).one? || counts.all?(&:even?)
    end
  end
end
