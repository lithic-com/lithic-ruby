# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has Approved or Declined the issued Challenge
      module ChallengeResult
        extend Lithic::Internal::Type::Enum

        APPROVE = :APPROVE
        DECLINE_BY_CUSTOMER = :DECLINE_BY_CUSTOMER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
