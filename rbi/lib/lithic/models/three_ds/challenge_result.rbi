# typed: strong

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has Approved or Declined the issued Challenge
      class ChallengeResult < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVE = :APPROVE
        DECLINE_BY_CUSTOMER = :DECLINE_BY_CUSTOMER
      end
    end
  end
end
