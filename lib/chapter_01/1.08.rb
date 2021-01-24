# frozen_string_literal: true

module One
  module Eight
    module_function

    TARGET = 0

    def call(input)
      loc = input
        .index { |a| a.include?(TARGET) }
        .instance_eval { [self, input[self].index(TARGET)] }

      input.tap do |obj|
        obj[loc.first].map! { TARGET }
        obj.each { |ary| ary[loc.last] = TARGET }
      end
    end
  end
end
