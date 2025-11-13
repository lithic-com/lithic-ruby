# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # The operation to apply to the attribute
      module ConditionalOperation
        extend Lithic::Internal::Type::Enum

        IS_ONE_OF = :IS_ONE_OF
        IS_NOT_ONE_OF = :IS_NOT_ONE_OF
        MATCHES = :MATCHES
        DOES_NOT_MATCH = :DOES_NOT_MATCH
        IS_EQUAL_TO = :IS_EQUAL_TO
        IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
        IS_GREATER_THAN = :IS_GREATER_THAN
        IS_GREATER_THAN_OR_EQUAL_TO = :IS_GREATER_THAN_OR_EQUAL_TO
        IS_LESS_THAN = :IS_LESS_THAN
        IS_LESS_THAN_OR_EQUAL_TO = :IS_LESS_THAN_OR_EQUAL_TO

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
