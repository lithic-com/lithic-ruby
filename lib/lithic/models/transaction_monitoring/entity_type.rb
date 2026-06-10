# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # The type of entity associated with an account holder
      module EntityType
        extend Lithic::Internal::Type::Enum

        BENEFICIAL_OWNER_INDIVIDUAL = :BENEFICIAL_OWNER_INDIVIDUAL
        CONTROL_PERSON = :CONTROL_PERSON

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
