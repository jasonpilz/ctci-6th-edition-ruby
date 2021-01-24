# frozen_string_literal: true

module One
  module Six
    module_function

    def call(input)
      comp = input
        .chars
        .slice_when(&:!=)
        .reduce(String.new) { |s, a| s << a.instance_eval { "#{first}#{size}" } }

      [comp, input].min_by(&:length)
    end
  end
end
