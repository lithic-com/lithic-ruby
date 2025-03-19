# typed: strong

module Lithic
  module Models
    # Type of instance financial account
    class InstanceFinancialAccountType < Lithic::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      ISSUING = :ISSUING
      RESERVE = :RESERVE
      OPERATING = :OPERATING
      CHARGED_OFF_FEES = :CHARGED_OFF_FEES
      CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
      CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL
    end
  end
end
