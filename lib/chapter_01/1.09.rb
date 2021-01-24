# frozen_string_literal: true

module One
  module Nine
    module_function

    def call(s1, s2)
      return false unless s1.size == s2.size && s1.size > 0

      is_substring(s1+s1, s2)
    end

    def is_substring(s1, s2)
      s1.include?(s2)
    end
  end
end
