# frozen_string_literal: true

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Internal::Type::Enum

      ISSUING = :ISSUING
      OPERATING = :OPERATING

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
