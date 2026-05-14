# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
      module ConditionalValue
        extend Lithic::Internal::Type::Union

        # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        variant String

        variant Integer

        variant Float

        # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
        variant -> { Lithic::Models::AuthRules::ConditionalValue::StringArray }

        # A timestamp, to be used with `IS_AFTER` or `IS_BEFORE`
        variant Time

        # @!method self.variants
        #   @return [Array(String, Integer, Float, Array<String>, Time)]

        # @type [Lithic::Internal::Type::Converter]
        StringArray = Lithic::Internal::Type::ArrayOf[String]
      end
    end
  end
end
