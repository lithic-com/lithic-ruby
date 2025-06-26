# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has approved or declined the issued Challenge
      module ChallengeResult
        extend Lithic::Internal::Type::Enum

        APPROVE = :APPROVE
        DECLINE_BY_CUSTOMER = :DECLINE_BY_CUSTOMER

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
