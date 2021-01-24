# frozen_string_literal: true

module One
  module Five
    module_function

    def call(x, y)
      [x, y]
        .sort_by(&:length)
        .map { |s| s.chars.reduce(Hash.new(0)) { |h, c| h[c] += 1; h }.to_a }
        .instance_eval { last - first }
        .instance_eval { one? && pop.last == 1 }
    end
  end
end
