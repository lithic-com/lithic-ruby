# frozen_string_literal: true

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Internal::Type::Enum

      ISSUING = :ISSUING
      OPERATING = :OPERATING

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
