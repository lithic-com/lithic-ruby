# frozen_string_literal: true

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Internal::Type::Enum

      ISSUING = :ISSUING
      RESERVE = :RESERVE
      OPERATING = :OPERATING
      CHARGED_OFF_FEES = :CHARGED_OFF_FEES
      CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
      CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL
      SECURITY = :SECURITY
      PROGRAM_RECEIVABLES = :PROGRAM_RECEIVABLES
      COLLECTION = :COLLECTION
      BANK_ACCOUNTS_PAYABLE = :BANK_ACCOUNTS_PAYABLE

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
