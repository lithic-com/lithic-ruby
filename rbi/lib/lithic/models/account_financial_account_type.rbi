# typed: strong

module Lithic
  module Models
    # Type of account financial account
    class AccountFinancialAccountType < Lithic::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      ISSUING = :ISSUING
      OPERATING = :OPERATING
    end
  end
end
