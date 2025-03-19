# typed: strong

module Lithic
  module Models
    class VerificationMethod < Lithic::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      MANUAL = :MANUAL
      MICRO_DEPOSIT = :MICRO_DEPOSIT
      PLAID = :PLAID
      PRENOTE = :PRENOTE
      EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED
    end
  end
end
