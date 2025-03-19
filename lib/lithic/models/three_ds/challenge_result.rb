# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @abstract
      #
      # Whether the Cardholder has Approved or Declined the issued Challenge
      class ChallengeResult < Lithic::Enum
        APPROVE = :APPROVE
        DECLINE_BY_CUSTOMER = :DECLINE_BY_CUSTOMER

        finalize!
      end
    end
  end
end
