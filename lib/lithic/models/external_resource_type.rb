# frozen_string_literal: true

module Lithic
  module Models
    # Type of external resource associated with the management operation
    module ExternalResourceType
      extend Lithic::Internal::Type::Enum

      STATEMENT = :STATEMENT
      COLLECTION = :COLLECTION
      DISPUTE = :DISPUTE
      UNKNOWN = :UNKNOWN

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
