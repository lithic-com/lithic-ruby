# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
      module ConditionalValue
        extend Lithic::Internal::Type::Union

        # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
        variant String

        # A number, to be used with `IS_GREATER_THAN`, `IS_GREATER_THAN_OR_EQUAL_TO`, `IS_LESS_THAN`, `IS_LESS_THAN_OR_EQUAL_TO`, `IS_EQUAL_TO`, or `IS_NOT_EQUAL_TO`
        variant Integer

        # An array of strings, to be used with `IS_ONE_OF` or `IS_NOT_ONE_OF`
        variant -> { Lithic::Models::AuthRules::ConditionalValue::StringArray }

        # @!method self.variants
        #   @return [Array(String, Integer, Array<String>)]

        # @type [Lithic::Internal::Type::Converter]
        StringArray = Lithic::Internal::Type::ArrayOf[String]
      end
    end
  end
end
