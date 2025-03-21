# frozen_string_literal: true

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Enum

      ISSUING = :ISSUING
      RESERVE = :RESERVE
      OPERATING = :OPERATING
      CHARGED_OFF_FEES = :CHARGED_OFF_FEES
      CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
      CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
