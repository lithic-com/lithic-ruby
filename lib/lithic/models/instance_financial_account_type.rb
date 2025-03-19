# frozen_string_literal: true

module Lithic
  module Models
    # @abstract
    #
    # Type of instance financial account
    class InstanceFinancialAccountType < Lithic::Enum
      ISSUING = :ISSUING
      RESERVE = :RESERVE
      OPERATING = :OPERATING
      CHARGED_OFF_FEES = :CHARGED_OFF_FEES
      CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
      CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL

      finalize!
    end
  end
end
